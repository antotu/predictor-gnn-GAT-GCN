from qiskit.circuit import QuantumCircuit
from qiskit import qasm2
from qiskit.transpiler import generate_preset_pass_manager
from qiskit_ibm_runtime.fake_provider import FakeGeneva
from qiskit_ibm_runtime import Estimator
import os
import pandas as pd
folderName = 'MQTBench_2025-04-14-12-07-50'
resultsFolder = 'IBM-Geneva'
if not os.path.exists(resultsFolder):
    os.makedirs(resultsFolder)
# Step 1. Load the QASM circuit
listFile = os.listdir(folderName)
resDict = {}
for fileName in listFile:
    if fileName.endswith('.qasm'):
        print(fileName)
        numQubit = int(fileName[:-5].split('_')[-1])
        if numQubit > 10:
            continue
        '''
        doOpt = True
        for i in range(1, 4):
            optCheck = fileName[:-5] + '_opt_' + str(i) + '.qasm'
            optCheck_file_path = os.path.join(resultsFolder, optCheck)
            if os.path.exists(optCheck_file_path):
                doOpt = doOpt or False
        if not doOpt:
            continue'''
        qasm_file_path = os.path.join(folderName, fileName)
        
        #qasm_file_path = 'MQTBench_2025-04-11-14-01-57/ae_indep_tket_2.qasm'
        loaded_circuit = QuantumCircuit.from_qasm_file(qasm_file_path)

        # Step 2. Create a new circuit with the same number of qubits and no classical bits
        num_qubits = loaded_circuit.num_qubits
        original_circuit = QuantumCircuit(num_qubits)

        # Mapping from the loaded circuit's qubits to the new circuit's qubits
        qubit_map = {q: original_circuit.qubits[i] for i, q in enumerate(loaded_circuit.qubits)}

        # Copy over all non-measurement instructions with remapped qubits
        for instr, qargs, _ in loaded_circuit.data:
            if instr.name != "measure":
                new_qargs = [qubit_map[q] for q in qargs]
                original_circuit.append(instr, new_qargs)

        #print("Original Circuit (measurements removed and qubits remapped):")
        #print(original_circuit)

        # Step 3. Build the full circuit by appending a barrier and the inverse of the original circuit
        try:
            full_circuit = original_circuit.copy()
            full_circuit.barrier()
            full_circuit.append(original_circuit.inverse(), full_circuit.qubits)

            # Step 4. Add measurement to all qubits
            full_circuit.measure_all()
        except Exception as e:
            with open('log-Geneva.txt', 'a') as log_file:
                log_file.write(f"Error processing {fileName} for: {str(e)}\n")
            continue
        #print("\nFinal Circuit (with measurements):")
        #print(full_circuit)
        for opt in range(4):
            try:
                # Step 5. Transpile the circuit using the FakeBrisbane backend and a preset pass manager
                backend = FakeGeneva()
                pass_manager = generate_preset_pass_manager(optimization_level=opt, backend=backend)
                transpiled_circuit = pass_manager.run(full_circuit)
                
                optFile = fileName[:-5] + '_opt_' + str(opt) + '.qasm'
                print(optFile)
                output_file_path = os.path.join(resultsFolder, optFile)
                # Save the transpiled circuit to a QASM file
                
                #print("\nTranspiled Circuit:")
                #print(transpiled_circuit)

                # Optionally, save the transpiled circuit to a QASM file
                # output_file_path = 'transpiled_circuit.qasm'
                # with open(output_file_path, 'w') as output_file:
                #     output_file.write(transpiled_circuit.qasm())

                # Step 6. Execute the transpiled circuit using the Estimator
                # The Estimator expects a list of circuits to run.
                # Run the transpiled circuit using the simulated backend
                job = backend.run(transpiled_circuit)
                counts = job.result().get_counts()

                # calculate the probability for state |0000>
                # Assuming the circuit has 4 qubits
                target_state = '0' * num_qubits
                probability = counts.get(target_state, 0) / sum(counts.values())
                resDict[optFile] = probability
                
                
                with open(output_file_path, 'w') as output_file:
                    qasm2.dump(transpiled_circuit, output_file_path)
            except Exception as e:
                print(e)
                with open('log-Geneva.txt', 'a') as log_file:
                    log_file.write(f"Error processing {fileName} with optimization level {opt}: {str(e)}\n")
                continue
        pd.DataFrame.from_dict(resDict, orient='index').to_csv('IBM-Geneva-res.csv')
    
                #print("\nTranspiled Circuit:")

            #print(f"Probability of measuring {target_state}: {probability:.4f}")

pd.DataFrame.from_dict(resDict, orient='index').to_csv('results.csv')
