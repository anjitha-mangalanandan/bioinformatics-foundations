#!/bin/bash

# FASTQ QC pipeline wrapper

INPUT=$1

if [ -z "$INPUT" ]; then
    echo "Usage: ./run_fastq_qc.sh <fastq_file>"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Extract filename without path
BASENAME=$(basename "$INPUT")

# Remove extension (.fastq or .fastq.gz)
NAME=${BASENAME%%.*}

# Create results directory if it doesn't exist
mkdir -p results

OUTPUT=results/${NAME}_report.txt

echo "--------------------------------"
echo "Running FASTQ QC pipeline"
echo "Input file: $INPUT"
echo "Output file: $OUTPUT"
echo "--------------------------------"

scripts/fastq_summary.sh "$INPUT" > "$OUTPUT"

echo "Analysis complete."
echo "Results saved to $OUTPUT"
