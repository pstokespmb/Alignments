#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J BWA_mem_align
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/BWA_mem_align.out
#SBATCH -e /global/home/users/peter_stokes/BWA_mem_align.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bwa/0.7.17-r1188

bwa mem HanXRQr1.0-20151230_ch01_to_17.fasta fullAssembly_pseudohap2.1.fasta > XRQ_PS21.sam