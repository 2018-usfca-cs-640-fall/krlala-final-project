for SRA_number in $(cut -f 8 data/metadata/SraRunTablel.txt | tail -n +2)
do
    SRATOOLKIT/bin/fastq-dump.exe -v $SRA_number -O data/raw_data
done
