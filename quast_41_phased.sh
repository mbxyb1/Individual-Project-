#!/bin/bash
#SBATCH --job-name=quast_41_phased
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64g
#SBATCH --time=60:00:00
#SBATCH --output=/gpfs01/share/Yant_Group_Shared/Yash/OandE/41/quast/phased/%x.out
#SBATCH --error=/gpfs01/share/Yant_Group_Shared/Yash/OandE/41/quast/phased/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate quast

quast /gpfs01/share/Yant_Group_Shared/Yash/OandE/41/hifiasm/phased/maternal.bp.hap1.p_ctg.fa \
        /gpfs01/share/Yant_Group_Shared/Yash/OandE/41/hifiasm/phased/maternal.bp.hap2.p_ctg.fa \
        /gpfs01/share/Yant_Group_Shared/Yash/OandE/41/hifiasm/phased/paternal.bp.hap1.p_ctg.fa \
        /gpfs01/share/Yant_Group_Shared/Yash/OandE/41/hifiasm/phased/paternal.bp.hap2.p_ctg.fa \
        -r /share/Yant_Group_Shared/000.refs/Arabidopsis_arenosa/Arabidopsis_arenosa_genome.softmasked.fna.gz \
        -g /share/Yant_Group_Shared/000.refs/Arabidopsis_arenosa/Arabidopsis_arenosa_genome.annotation.gtf




