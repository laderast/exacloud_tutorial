#!/bin/bash
#SBATCH --nodes=1 #request 1 node
#SBATCH --tasks-per-node=3 ##we want our node to do 2 tasks concurrently
#SBATCH --cpus-per-task=1 ##ask for  CPUS (3 * 1)
#SBATCH --mem-per-cpu=1gb ## request 1 gigabyte per cpu
#SBATCH --time=00:05:00 ## ask for 5 minutes on the node
#SBATCH

## Try running this script with sbatch --array=1-6 runSorted.sh

## This statement is where the magic happens - we list all file names
## that have sorted.bam in them with ls, then pipe the output to awk to return
## the filename whose line number is the task id one by one to the srun
## statement below

## note that we have to know how many files are in our directory
## and we pass it in as an --array argument to sbatch

arrayfile=`ls *.sorted.bam | awk -v line=$SLURM_ARRAY_TASK_ID '{if (NR == line) print $0}'` 

## now run samtools index on the file
srun /opt/installed/samtools-1.6/bin/samtools index $arrayfile
