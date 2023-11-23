#!/bin/bash
#SBATCH --time=2:00
#SBATCH --cpus-per-task=2
#SBATCH --partition=cpar

THREADS="1 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40"

for thread in $THREADS; do
    export OMP_NUM_THREADS=$thread
    time ./MDseq.exe < inputdata.
done