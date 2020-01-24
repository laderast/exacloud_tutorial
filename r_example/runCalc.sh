#!/usr/bin/bash
#SBATCH --nodes=1 #request 1 node
#SBATCH --array=1-2
#SBATCH --tasks-per-node=3 ##we want our node to do 2 tasks concurrently
#SBATCH --cpus-per-task=1 ##ask for  CPUS (3 * 1)
#SBATCH --mem-per-cpu=1gb ## request 1 gigabyte per cpu
#SBATCH --time=00:05:00 ## ask for 5 minutes on the node
#SBATCH

#Rscript is the command line version of R
#note we provide arguments after we call the calc_freq.R script
Rscript calc_freq.R file="data/sim$SLURM_ARRAY_TASK_ID.raw" outputDir="output/"