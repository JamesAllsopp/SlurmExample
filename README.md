# Baskerville Slurm Example

Clone this repository into your Baskerville home or project directory using; 
```
git clone https://github.com/JamesAllsopp/SlurmExample.git
```

then edit the slurm_example.sh file, where you can change some of the values. "nano" is already installed on the login node, so you can use that.

Once you've done that, run the file with
```
sbatch slurm_example.sh
```

You should get a job number, keep this as you can use it to track your progress through the queue at the results.

You can see the progress using the following command, the codes are explained [here](https://curc.readthedocs.io/en/latest/running-jobs/squeue-status-codes.html);
```
squeue -j <your job number>
```
  
and you can see when your job is expected to start with;
```
squeue -j <your job number> --start
```
  
Once the job is finished, you will get two files;
  
```
slurm-<job number>.out
slurm-<job number.stats
```
  
The *.out files are the output you want, and the *.stats file gives you information about your job.
  
For completeness, a job can be cancelled entirely using;
```
scancel -j <job number>
```

 
