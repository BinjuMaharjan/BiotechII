#!/bin/bash

#quality control
fastqc sampleB_R1.fq.gz

#Trimming using Cutadapt
cutadapt -a AGATCGGAAG -A AGATCGGAAG -m 100 -o trim/sampleB_R1.out.fq.gz -p trim/sampleB_R2.out.fq.gz sampleB_R1.fq.gz sampleB_R2.fq.gz

#Read alignment
bwa index reference.fa

#Align the trimmed reads
bwa mem reference.fa trim/sampleB_R1.out.fq.gz -p trim/sampleB_R2.out.fq.gz > sam/sampleB.sam

#Post alignment processing
samtools view -S -b sam/sampleB.sam > bam/sampleB.bam

#Sorting 
samtools sort bam/sampleB.bam -o sort/sampleB.sorted.bam

#Indexing
samtools index sort/sampleB.sorted.bam

#Variant calling
bcftools mpileup -Ou -f reference.fa sort/sampleB.sorted.bam > sampleB.mpileup

bcftools call -mv -Ob -o variantsB.bcf sampleB.mpileup

#Convert BCF to VCF
bcftools view variantsB.bcf>variantsB.vcf

#Summarize VCF file
bcftools stats variantsB.vcf>summaryB.txt
#Filtering based on quality score, depth of coverage and multiple filters together
bcftools filter -e 'QUAL<20' -o filtered_by_qualB.vcf variantsB.vcf
bcftools filter -e 'DP<10' -o filtered_by_depthB.vcf variantsB.vcf
bcftools filter -e 'QUAL<20 || DP<10' -o filtered_variantsB.vcf variantsB.vcf

#Summarize the final VCF file
bcftools stats filtered_variantsB.vcf>summaryB.txt