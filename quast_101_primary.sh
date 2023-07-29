#!/bin/bash
#SBATCH --job-name=quast_101_primary
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64g
#SBATCH --time=40:00:00
#SBATCH --output=/gpfs01/share/Yant_Group_Shared/Yash/OandE/101/quast/primary/%x.out
#SBATCH --error=/gpfs01/share/Yant_Group_Shared/Yash/OandE/101/quast/primary/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate quast

quast /gpfs01/share/Yant_Group_Shared/Yash/OandE/101/hifiasm/primary/maternal.p_ctg.fa \
        /gpfs01/share/Yant_Group_Shared/Yash/OandE/101/hifiasm/primary/maternal.p_utg.fa \
        -r /share/Yant_Group_Shared/000.refs/Arabidopsis_arenosa/Arabidopsis_arenosa_genome.softmasked.fna.gz \
        -g /share/Yant_Group_Shared/000.refs/Arabidopsis_arenosa/Arabidopsis_arenosa_genome.annotation.gtf
