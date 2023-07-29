#!/bin/bash
#SBATCH --job-name=busco_21_phased
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64g
#SBATCH --time=12:00:00
#SBATCH --output=/gpfs01/share/Yant_Group_Shared/Yash/OandE/21/busco/phased/%x.out
#SBATCH --error=/gpfs01/share/Yant_Group_Shared/Yash/OandE/21/busco/phased/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate busco_env

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/21/hifiasm/phased/maternal.bp.hap1.p_ctg.fa -o /results_maternal_hap1_ctg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/21/hifiasm/phased/maternal.bp.hap2.p_ctg.fa -o /results_maternal_hap2_ctg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/21/hifiasm/phased/paternal.bp.hap1.p_ctg.fa -o /results_paternal_hap1_ctg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/21/hifiasm/phased/paternal.bp.hap2.p_ctg.fa -o /results_paternal_hap2_ctg -l brassicales --cpu 12





