#!/bin/bash
#SBATCH --job-name=find_unique_kmers_101
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=32g
#SBATCH --time=48:00:00
#SBATCH --output=/gpfs01/home/mbxyb1/OandE/101/%x.out
#SBATCH --error=/gpfs01/home/mbxyb1/OandE/101/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate trio_binning

fqdir="/gpfs01/share/Yant_Group_Shared/NEOF_hifi_triobinning/min500bp"

find-unique-kmers -k 101 -p 8 ${fqdir}/P1_3168_500bp.fastq.gz ${fqdir}/P2_3177_500bp.fastq.gz

