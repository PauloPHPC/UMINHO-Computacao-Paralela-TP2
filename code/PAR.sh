#!/bin/bash
#SBATCH --time=10:00
#SBATCH --cpus-per-task=40
#SBATCH --partition=cpar

THREADS="1 2 4 8 12 16 20 24 28 32 36 40"

for thread in $THREADS; do
    export OMP_NUM_THREADS=$thread
    time ./MDpar.exe < inputdata.txt
done