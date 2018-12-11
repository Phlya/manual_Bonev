for f in project/output/pairs/library/HiC_*nodups.pairs.gz;
    do outname=$(echo $(basename $f) | cut -d '.' -f1);
       for res in 1000 5000 10000 25000 100000 200000 1000000;
         do qsub -N binning$outname$res cload_mapq.sh $f $res $outname;
            qsub -hold_jid binning$outname$res -N balancing$outname$res balance.sh $outname $res;
       done;
done
