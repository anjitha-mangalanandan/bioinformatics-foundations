# Week 1 - Linux basics for Bioinformatics

## Overview
This week focused on building foundational Linux command-line skills essential for Bioinformatics

---

## Topics Covered

### 1. Terminal Navigation
- `pwd` - Print working directory
- `ls` - List directory contents
- `cd` - Change directory

### 2. File and Directory Management
- `mkdir` - Create directories
- `touch` - Create files
- `cp` - Copy files
- `mv` - Move/Rename files
- `rm` - Remove files

### 3. Project Organisation

The directory structure follows a reproducible bioinformatics workflow separating raw data, processed data, results, and scripts.

The structured directories created as shown below:

```
week1-linux-basics
├── README.md
├── data
│   └── sample1_raw.fastq
├── notes
├── processed_data
│   └── sample2.fastq
├── raw_data
│   ├── sample1.fastq
│   └── sample2.fastq
├── results
└── scripts
    └── week1_practice.sh
```

---

## Practical Exercises Completed

- Created and navigated multiple directories
- Organised mock datasets
- Renamed and moved files
- Deleted unnecessary files
- Cloned GitHub repository
- Configured Git (user.name and user.email)
- Committed and pushed changes to remote repository
- Installed and used the `tree` command to visualise directory structure

---

## Automation Script

The commands practiced during week 1 were consolidated into a reusable Bash script:

`scripts/week1_practice.sh`

This script:
- Creates the directory structure
- Generates mock FASTQ files
- Copies and renames files
- Cleans temporary files

Run it using:

```bash
./scripts/week1_practice.sh 
```
---

## Key Learnings

- Linux command line is powerful and efficient for handling biological datasets.
- Proper directory structure is critical for reproducible research.
- Git version control is essential for tracking bioinformatics workflows.
- GitHub integration enables project documentation and portfolio building.

---

## Tools Used
- Ubuntu 22.04.5 LTS (Windows Subsystem for Linux)
- Git
- GitHub

---

## Reflection
This week established the foundation for working with bioinformatics pipelines. Mastery of Linux is essential before moving to text processing tools, scripting, and NGS workflows.

**Next:** Advanced command-line tools (grep, awk, sed, piping, permissions, bash scripting).
