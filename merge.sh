#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -l h_rt=8:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

export MKL_NUM_THREADS=1

cooler merge project/output/coolers/library_group/$1.$2.cool project/output/coolers/library/$1*.$2.cool
cooler merge project/output/coolers/library_group/$1.$2.mapq30.cool project/output/coolers/library/$1*.$2.mapq30.cool
