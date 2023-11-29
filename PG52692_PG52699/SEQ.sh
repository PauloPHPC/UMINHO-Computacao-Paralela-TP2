#!/bin/bash
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=40
#SBATCH --partition=cpar
#SBATCH --exclusive

THREADS=(1 2 4 8 12 16 20 24 28 32 36 40)

for thread in "${THREADS[@]}" 
do
    export OMP_NUM_THREADS=${thread}
    echo ${OMP_NUM_THREADS}
    time `./MDseq.exe <inputdata.txt >lixo1`
done