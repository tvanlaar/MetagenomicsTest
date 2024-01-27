#!/bin/bash

for file in hmp_metagenomics_downsampled/fastq/*.fastq; do
    kneaddata -un "$file" -db phiX/phiX --output kneaddata_out/ --trimmomatic /Users/triciavanlaar/miniforge3/envs/metagenomics/share/trimmomatic-0.39-2 -t 4 --trimmomatic-options "SLIDINGWINDOW:4:20 MINLEN:50" --bowtie2-options "--very-sensitive --dovetail" --remove-intermediate-output
done