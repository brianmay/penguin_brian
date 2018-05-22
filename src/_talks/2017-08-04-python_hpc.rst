---
layout: talk
title: Let's run Python on a Supercomputer
conference: /conferences/2017/08/03/PyConAu2017/
speaker: David Perry
begin: 2017-08-04 14:15
---

Let's run Python on a Supercomputer
===================================
Fast networking more important than fast CPUs.

Schedular. Slurm most popular. PBS.

Job types:

1. Independant parallel jobs.
2. Multi-core single-node jobs. Multi-threaded.
3. Multi-core multi-node jobs. Multi-threaded with communication between nodes.
4. GPU jobs.

OpenMP - Shared memory.

OpenMPI - Message passing.

Make Python go fast: Profiling, NumPy, PyPy, Numba, Cython.

Cloud HPC, AWS spot pricing.

In practise "good enough" is often sufficient, no need to get optimal
performance.
