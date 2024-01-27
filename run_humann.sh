#!/bin/bash

# Directory where the output will be stored (basically creating the variable for below)
output_dir="humann_out"

# Loop over each fastq file in the kneaddata_out/clean_seq directory
for file in kneaddata_out/clean_seq/*fastq; do
    # Extract filename without extension to use as output subdirectory
    base_name=$(basename "$file" .fastq)

    # Run humann for each file, one at a time
    humann --threads 1 --input "$file" --output "${output_dir}/${base_name}"
done

echo "All humann processes completed."