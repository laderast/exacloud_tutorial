# Welcome to Exacloud Training!

## What is Exacloud?

[Exacloud](http://exainfo.ohsu.edu) is OHSU's cluster computing environment. It currently has over 6000 CPUs of varying capabilities and memory that can be utilized by users who want to run parallel computing jobs.

However, to run jobs effectively on exacloud, you must understand some basic techniques and how exacloud works.



## Prerequisites for this training:

You will need the following:

1) ACC Login
2) Permission to join exacloud
3) SSH terminal
4) FTP program (WinSCP/Cyberduck) for transferring files

You should be able to understand the following:

1) What a shell script is
  + How to run a shell script
  + shebangs and setting up your shell script
2) Basic shell commands, including:
  + directory and file manipulation: `ls`, `rm`, `mkdir`, `rmdir`
  + file editing using `nano`, `vim`, or `emacs`.
  + basic file permissions
  + process monitoring: `ps` and `kill`
3) How to run your program/workflow on the command line
  + R: `Rscript`
  + Python: `python`
  + Executable: `GATK`
4) Where your executable is on exacloud
  + `which`

Intro to Shell For Data Science (units 1, 2, and 4): https://www.datacamp.com/courses/introduction-to-shell-for-data-science

## What is exacloud?



## Where is exacloud?

exahead1.ohsu.edu (SSH in) - only accessible within OHSU Firewall
exacloud.ohsu.edu (access file system via FTP, for transferring files)

acc.ohsu.edu: SSH gateway
acc.ohsu.edu: SFTP gateway (limited to 10 Gb)

## What can I do on exacloud?



## Common headaches

File Libraries for R/Python - how and where to install

## What is Slurm?

Slurm is basically a manager for all of the computing nodes on exacloud.

## Ways to Work on Slurm

If you are going to run multiple jobs, always figure out how to do it once, and then divide the jobs up.

1) Interactive mode:
  `srun --pty bash`
2) `srun` - one off jobs, quick
3) `sbatch` - anything that needs to be automated
  + Job arrays
  + `--exclusive`
  + Jupyter Notebooks
4) `salloc` - allocate, then run

## Logging your jobs

This is so you can figure out how much memory and time to request.

## Don't be afraid of messing up

There are number of things

Be wary of asking for too many compute nodes.
Be respectful of the lustre filesystem and don't leave files that are not going to be analyzed


## Ways to ask for compute resources in Slurm

1) #SBATCH requests
  + number of CPUS
  + amount of time needed
  + amount of RAM
  + ntasks
2) The various queues and when to use them
3) Job Arrays
  + https://slurm.schedmd.com/job_array.html

## Interacting with the Slurm cluster

1) `scancel`
2) `squeue`
3) `sinfo`

## Disk systems available on exacloud and when to use them

1) ACC home directory
2) `lustre`
3) `/mnt/scratch`
4) Research Data Storage

## FAQS

### Slurm specific questions

https://slurm.schedmd.com/faq.html

### Exacloud specific questions

1) How do I know how much time to ask for?
2) How do I stay a good citizen on exacloud?
3) What is an appropriate use for lustre? How long can I leave data on there?
4) What is Research Data Storage and how do I get some?
5) How can I install my own versions of software?
6) Where should I keep personal libraries of software?

### Slurm Troubleshooting

https://slurm.schedmd.com/quickstart.html

## A little more knowledge

1) `tmux` or `screen` - open interactive jobs and keep them open
2) customizing your `.bashrc`
3) `rsync` - automate directory synchronization
4) Setting environment variables
5) installing specific libraries/software when you don't have root access
  + https://github.com/greenstick/bootstrapping-package-management-on-exacloud
