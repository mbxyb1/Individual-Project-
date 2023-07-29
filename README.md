# Individual-Project-
Auto-Tetraploid Assembly using Trio-Binning Method
These are the scripts you need to follow to replicate my individual project
Run the scripts in this order for each kmer value you choose to use:

1)find_unique_kmers
2)classify_by_kmers
3)hifiasm_assembly
4)quast
5)busco

Output files from find_unique_kmers are used in classify_by_kmers script and those from classify_by_kmers are used in hifiasm_assembly
Quast and busco scripts are run on the output files from hifiasm_assembly.

I have also included scripts to convert .gfa(graphical fragment assembly) output files from hifiasm_assembly into .fa (fasta) files which are then input into quast and busco.
Furthermore, I have also included code to count the number of reads and bases in a fasta file which is required for this project.
Along with this, a busco plot script to makee a comparison plot is also included.
