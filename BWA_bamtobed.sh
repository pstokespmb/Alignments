#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J BWA_bamtobed
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/BWA_bamtobed.out
#SBATCH -e /global/home/users/peter_stokes/BWA_bamtobed.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bedtools/2.26.0

bedtools bamtobed -i XRQ_PS21_mapped_filtered_sorted.bam > XRQ_PS21_mapped_filtered_sorted.bed


