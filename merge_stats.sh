for group in HiC_ES HiC_NPC HiC_CN HiC_ncx_NPC HiC_ncx_CN
             HiC_E14_Zfp608gRNA HiC_dCas9_Zfp608gRNA HiC_dCas9VP64_Zfp608gRNA
             "HiC_dCas9VP64-p65_Zfp608gRNA" HiC_E14_Sox4gRNA HiC_dCas9_Sox4gRNA
             HiC_dCas9VP64_Sox4gRNA "HiC_dCas9VP64-p65_Sox4gRNA";
  do pairtools stats --merge library/$group* -o library_group/$group.stats;
done
