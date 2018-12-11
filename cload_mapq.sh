#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -l h_rt=8:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

export MKL_NUM_THREADS=1

#pairtools select '(mapq1>=30) and (mapq2>=30)' $1
zcat $1 | grep "^[^#]" | awk -F "\t" '{ if(($9 >= 30) && ($10 >= 30)) { print } }' | cooler cload pairs --assembly mm9 -c1 2 -p1 3 -c2 4 -p2 5 /exports/igmm/eddie/wendy-lab/ilia/genomes/mm9/chrfile.txt:$2 - project/output/coolers/library/$3.$2.mapq30.cool

cooler cload pairs --assembly mm9 -c1 2 -p1 3 -c2 4 -p2 5 /exports/igmm/eddie/wendy-lab/ilia/genomes/mm9/chrfile.txt:$2 $1 project/output/coolers/library/$3.$2.cool
