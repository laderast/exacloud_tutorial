#!/bin/bash
#SBATCH --nodes=1 #request 1 node
#SBATCH --array=1-6
#SBATCH --tasks-per-node=6 ##we want our node to do 2 tasks concurrently
#SBATCH --cpus-per-task=1 ##ask for  CPUS (3 * 1)
#SBATCH --mem-per-cpu=1gb ## request 1 gigabyte per cpu
#SBATCH --time=00:05:00 ## ask for 5 minutes on the node
#SBATCH
srun /opt/installed/samtools-1.6/bin/samtools sort SRR1576820_000$SLURM_ARRAY_TASK_ID.bam -o SRR1576820_000$SLURM_ARRAY_TASK_ID.sorted.bam 
