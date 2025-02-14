#!/bin/bash
#SBATCH --job-name=seq_wavefront
#SBATCH --output=seq_wavefront_%j.out
#SBATCH --error=seq_wavefront_%j.err
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --partition=compute

# Run the sequential wavefront computation
./sequential_wavefront 1024
