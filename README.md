# Individual-Project-
Auto-Tetraploid Assembly using Trio-Binning Method.


This project fcuses on using the trio binning method (a method for assembling diploids) to assemble an auto-tetraploid Arabidopsis Arenosa.
Trio-binning splits the main fastq input file into 2 parental pools. Hifiasm is then run on both the pools which further splits the genome into 2 different haplotypes each (phased assembly) and into primary and alternate contigs (primary asssembly).
Quast and busco are then run to check the metrics of each assembly.

These are the scripts you need to follow to replicate my individual project.
Run the scripts in this order for each kmer value you choose to use:

1)find_unique_kmers
2)classify_by_kmers
3)hifiasm_assembly
4)quast
5)busco

Output files from find_unique_kmers are used in classify_by_kmers script and those from classify_by_kmers are used in hifiasm_assembly.
Two types of assmeblies are run - phased and primary on both the parental pools (maternal and paternal). Since, classify_by_kmers doesn't give us an appropriate output for Kmer values 121 and 141, I ahve excluded the hifiasm_assembly scripts for those kmer values.
Quast and busco scripts are run on the output files from hifiasm_assembly.

I have also included scripts to convert .gfa(graphical fragment assembly) output files from hifiasm_assembly into .fa (fasta) files which are then input into quast and busco.
Furthermore, I have also included code to count the number of reads and bases in a fasta file which is required for this project.
A busco plot script to make a comparison plot is also included.
I have attached quast reports and two summary files with all quast report altogether.
Lastly, I have included R scripts to plot the different quast metrics obtained from the quast reports. This script is run on the two different assembly quast summaries. 

