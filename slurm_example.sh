#!/bin/bash

#SBATCH --account=<your account name>  # Only required if you are a member of more than one Baskerville project; delete this line unless you are part of more than one project
#SBATCH --qos=<Put your QOS code here>  # upon signing-up to Baskerville you will be assigned a qos
#SBATCH --time 0:01:00  # Time assigned for the simulation; Longer jobs require longer to queue; this is set to one minute
#SBATCH --nodes 1  # Normally set to 1 unless your job requires multi-node, multi-GPU
#SBATCH --gpus 1  # Resource allocation on Baskerville is primarily based on GPU requirement
#SBATCH --cpus-per-gpu 36  # This number should normally be fixed as "36" to ensure that the system resources are used effectively
#SBATCH --job-name <GIVE YOUR JOB A NAME>  # Title for the job

module purge
module load baskerville

#Use "module avail" to find a python module to load, then check it's loaded with  "module list". Replace  <module> with the full name of the module displayed e.g.  "Python/3.u.v-GCCcore-x.y.z"y
module load <module> 
python baskerville.py



