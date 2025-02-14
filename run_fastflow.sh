#!/bin/bash
#SBATCH --job-name=ff_wavefront
#SBATCH --output=ff_wavefront_%j.out
#SBATCH --error=ff_wavefront_%j.err
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=compute

# Set the number of threads (adjust as needed)
export OMP_NUM_THREADS=16

# Run the FastFlow wavefront computation
./fastflow_wavefront 1024 16
