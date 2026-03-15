#!/bin/bash

# FASTQ summary Script
# Usage: ./fastq_summary.sh <fastq_file>

INPUT=$1

if [ -z "$INPUT" ]; then
    echo "Usage: .fastq_summary.sh <fastq_file>"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Detect compressed FASTQ
if [[ "$INPUT" == *.gz ]]; then
    READER ="zcat"
else
    READER="cat"
fi

echo "--------------------------------"
echo "FASTQ FILE SUMMARY"
echo "--------------------------------"
echo "File: $INPUT"
echo ""

$READER "$INPUT" | awk '

NR%4==2 {
    reads++
    bases += length($0)
    gc += gsub(/[GCgc]/,"&")
    if ($0 ~ /ATG/) motif++
}

END {

    printf "%-25s %d\n", "Total Reads:", reads
    printf "%-25s %d\n", "Sequence Count:", reads
    printf "%-25s %.2f%%\n", "GC Content:", (gc/bases)*100
    printf "%-25s %d\n", "ATG Motif Occurrences:",motif
    printf "%-25s %.2f\n", "Average Read Length:", bases/reads
}

'

echo "---------------------------------"
