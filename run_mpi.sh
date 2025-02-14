#!/bin/bash
#SBATCH --job-name=mpi_wavefront
#SBATCH --output=mpi_wavefront_%j.out
#SBATCH --error=mpi_wavefront_%j.err
#SBATCH --time=00:20:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --partition=compute

# Run MPI-based wavefront computation with 8 total processes
mpirun -np 8 ./mpi_wavefront 1024
