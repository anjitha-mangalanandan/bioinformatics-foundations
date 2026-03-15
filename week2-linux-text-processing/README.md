# FASTQ Quality Control Pipeline (Linux + Bash)

A lightweight bioinformatics pipeline for performing basic quality control analysis on FASTQ sequencing data using Linux command-line tools and Bash scripting.

This project demonstrates core bioinformatics skills including FASTQ parsing, text processing with awk/grep, and pipeline automation.

## Project Overview

Next-generation sequencing (NGS) experiments produce large FASTQ files containing millions of sequencing reads. Basic quality control analysis is an important first step before downstream bioinformatics analysis.

This project implements a simple QC pipeline that extracts key statistics from FASTQ files using Linux command-line tools.

The pipeline calculates:

- Total number of sequencing reads
- GC content
- ATG motif frequency
- Average read length

## Repository Structure

```
week2-linux-text-processing
│
├── raw_data
│   ├── sample_reads.fastq
│   └── subset.fastq
│
├── scripts
│   ├── fastq_summary.sh
│   └── run_fastq_qc.sh
│
├── results
│   ├── sample_fastq_report.txt
│   └── real_fastq_report.txt
│
├── notes
│
└── README.md
```

## Dataset

Two datasets are used in this project:

1. **Toy Dataset**
   - `sample_reads.fastq`
   - Small example file for testing the pipeline.

2. **Subset of Real Sequencing Data**
   - `subset.fastq`
   - Extracted from a publicly available sequencing dataset.

The full dataset originates from the European Nucleotide Archive (ENA).

Example download command:

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR442/003/SRR4420293/SRR4420293_1.fastq.gz

Large sequencing files are not stored in this repository due to their size.

## Pipeline Workflow

The QC pipeline performs the following steps:

1. Read FASTQ file
2. Extract sequence lines
3. Calculate statistics using awk
4. Generate a QC report

Pipeline execution is handled by a wrapper script.

```
FASTQ file
    │
    ▼
run_fastq_qc.sh
    │
    ▼
fastq_summary.sh
    │
    
QC report
```

## Running the FASTQ QC Pipeline

This project provides a reusable FASTQ quality control (QC) pipeline that can be run on either a toy sample dataset or a small real subset. It automates summary statistics generation, including total reads, sequence count, GC content, motif occurrences, and average read length.

### **Usage**

From the project root directory, run the wrapper script:

```bash
# QC on the toy FASTQ dataset
./scipts/run_fastq_qc.sh raw_data/sample_reads.fastq

# QC on the small real subset
./scripts/run_fastq_qc.sh raw_data/subset.fastq
```

## Example Output

Example QC report:

```
--------------------------------
FASTQ FILE SUMMARY
--------------------------------
File: subset.fastq

Total Reads:              1000
GC Content:               51.48%
ATG Motif Occurrences:    736
Average Read Length:      100
--------------------------------
```

## Tools Used

- Linux command line
- Bash scripting
- awk
- grep
- zcat

## Skills Demonstrated

- FASTQ file parsing
- Linux text processing
- Bash scripting
- Bioinformatics pipeline design
- Reproducible workflow development

