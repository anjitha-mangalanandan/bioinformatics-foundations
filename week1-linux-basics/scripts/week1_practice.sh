#!/bin/bash

# Week 1 Linux Basics Practice Scripts
# Author: Anjitha
# Description: Creates reproducible bioinformatics directory structure

set -e

# Create directories
mkdir -p data raw_data processed_data results notes

# Create dummy FASTQ files
touch raw_data/sample1.fastq raw_data/sample2.fastq

# Create working copies from raw sequencing data
cp raw_data/sample1.fastq data/
cp raw_data/sample2.fastq processed_data/

# Rename file
mv data/sample1.fastq data/sample1_raw.fastq

# Create and delete temp file
touch temp_file.txt
rm temp_file.txt

echo "Week 1 practice complete."
