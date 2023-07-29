#!/bin/bash
#SBATCH --job-name=busco_81_primary
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64g
#SBATCH --time=12:00:00
#SBATCH --output=/gpfs01/share/Yant_Group_Shared/Yash/OandE/81/busco/primary/%x.out
#SBATCH --error=/gpfs01/share/Yant_Group_Shared/Yash/OandE/81/busco/primary/%x.err

source $HOME/.bash_profile
module load anaconda-uon/3

conda activate busco_env

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/81/hifiasm/primary/maternal.p_ctg.fa -o /results_maternal_ctg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/81/hifiasm/primary/maternal.p_utg.fa -o /results_maternal_utg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/81/hifiasm/primary/paternal.p_ctg.fa -o /results_paternal_ctg -l brassicales --cpu 12

~/conda/envs/busco_env/bin/busco -m genome -i /gpfs01/share/Yant_Group_Shared/Yash/OandE/81/hifiasm/primary/paternal.p_utg.fa -o /results_paternal_utg -l brassicales --cpu 12


