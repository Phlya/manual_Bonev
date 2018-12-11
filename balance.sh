#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -l h_rt=12:00:00
#$ -l h_vmem=4G
#$ -pe sharedmem 8
#$ -j yes
#$ -V

cooler balance -p 8 -f project/output/coolers/library_group/$1.$2.mapq30.cool
cooler balance -p 8 -f project/output/coolers/library_group/$1.$2.cool
