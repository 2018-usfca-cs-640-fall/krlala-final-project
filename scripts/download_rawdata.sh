#!/bin/bash
# This script downloads raw data(fastq files) into the raw_data folder.
# My name is karan lala, and email- krlala@usfca.edu
echo "Downloading data"
for SRA_number in $(cut -f 8 data/metadata/SraRunTablel.txt | tail -n +2)
# for loop used for downloading file from each SRA number.
do
    SRATOOLKIT/bin/fastq-dump.exe -v "$SRA_number" -O data/raw_data
done
