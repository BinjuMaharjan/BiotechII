#!/usr/bin/bash
#Assign sample names
NAMES="SAMPLE1 SAMPLE2"

#Loop through each sample
for SAMPLE in $NAMES; do
#Mapping multiple samples
hisat2 -p 8 --no-unal --dta \
-x indexes/chrX_tran \
-1 samples/${SAMPLE}_R1.fastq.gz \
-2 samples/${SAMPLE}_R2.fastq.gz \
-S new_sam/${SAMPLE}.sam \
--summary-file summary/${SAMPLE}_summary.txt

#Sort SAM to BAM and save in sorted_BAM directory
samtools sort -@ 8 \
-o new_bam/${SAMPLE}.sorted.bam new_sam/${SAMPLE}.sam 

#Indexing
samtools index new_bam/${SAMPLE}.sorted.bam
#Counting reads
htseq-count -i gene_id -f bam -t exon \
-m intersection-nonempty -s no new_bam/${SAMPLE}.sorted.bam genes/chrX.gtf > new_count/${SAMPLE}.count.txt

done