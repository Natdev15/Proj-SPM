# Makefile for compiling Sequential, FastFlow, and MPI Wavefront Computations

CXX = g++
MPICXX = mpic++
CXXFLAGS = -std=c++11 -O3
FF_INC = -Ifastflow  # Adjust this path to FastFlow include directory

# Targets to build all versions
all: sequential_wavefront fastflow_wavefront mpi_wavefront

# Sequential Wavefront Compilation
sequential_wavefront: sequential_wavefront.cpp hpc_helpers.hpp
	$(CXX) $(CXXFLAGS) sequential_wavefront.cpp -o sequential_wavefront

# FastFlow Wavefront Compilation
fastflow_wavefront: fastflow_wavefront_farm.cpp hpc_helpers.hpp
	$(CXX) $(CXXFLAGS) $(FF_INC) fastflow_wavefront_farm.cpp -o fastflow_wavefront -pthread

# MPI Wavefront Compilation
mpi_wavefront: mpi_wavefront.cpp
	$(MPICXX) $(CXXFLAGS) mpi_wavefront.cpp -o mpi_wavefront

# Clean build artifacts
clean:
	rm -f sequential_wavefront fastflow_wavefront mpi_wavefront
