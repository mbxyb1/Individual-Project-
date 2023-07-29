#!/bin/bash
#SBATCH --job-name=hifiasm_primary_assembly_maternal_41
#SBATCH --partition=mmemq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=500g
#SBATCH --time=168:00:00
#SBATCH --output=/gpfs01/home/mbxyb1/OandE/41/hifiasm/primary/%x.out
#SBATCH --error=/gpfs01/home/mbxyb1/OandE/41/hifiasm/primary/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

/gpfs01/home/mbxyb1/envs/hifiasm/hifiasm -o /gpfs01/home/mbxyb1/OandE/41/hifiasm/primary/maternal --primary -t 24 /gpfs01/home/mbxyb1/OandE/41/classified/maternal.fastq.gz

