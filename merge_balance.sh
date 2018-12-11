for group in HiC_ES HiC_NPC HiC_CN HiC_ncx_NPC HiC_ncx_CN HiC_E14_Zfp608gRNA HiC_dCas9_Zfp608gRNA HiC_dCas9VP64_Zfp608gRNA "HiC_dCas9VP64-p65_Zfp608gRNA" HiC_E14_Sox4gRNA HiC_dCas9_Sox4gRNA HiC_dCas9VP64_Sox4gRNA "HiC_dCas9VP64-p65_Sox4gRNA";
  do for res in 1000 5000 10000 25000 100000 200000 1000000
     do qsub -N merge$group$res merge.sh $group $res;
        qsub -hold_jid merge$group$res -N balancing$group$res balance.sh $group $res;
     done
done
