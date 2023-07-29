
#!/bin/bash
#SBATCH --job-name=classify_long_reads_21
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=32g
#SBATCH --time=48:00:00
#SBATCH --output=/gpfs01/home/mbxyb1/OandE/21/%x.out
#SBATCH --error=/gpfs01/home/mbxyb1/OandE/21/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate trio_binning

classify-by-kmers \
    /gpfs01/share/Yant_Group_Shared/NEOF_hifi_triobinning/min500bp/F1_500bp.fastq.gz \
    hapA_only_kmers.txt \
    hapB_only_kmers.txt \
    --haplotype-a-out-prefix /gpfs01/home/mbxyb1/OandE/21/classified/maternal \
    --haplotype-b-out-prefix /gpfs01/home/mbxyb1/OandE/21/classified/paternal \
    --unclassified-out-prefix /gpfs01/home/mbxyb1/OandE/21/classified/unclassified

