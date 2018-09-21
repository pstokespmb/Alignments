#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J BWA_samtools_bam_mapped_filtered_sort
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/BWA_samtools_bam_mapped_filtered_sort.out
#SBATCH -e /global/home/users/peter_stokes/BWA_samtools_bam_mapped_filtered_sort.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load samtools/1.8

samtools sort -o XRQ_PS21_unmapped_sorted.bam XRQ_PS21_unmapped.bam