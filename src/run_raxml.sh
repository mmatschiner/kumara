# m_matschiner Wed Apr 18 00:17:40 CEST 2018

# Generate a maximum-likelihood phylogeny with raxml.
raxml -m GTRGAMMAI -n run -s ../res/align/chloroplast.aligned.gblocks.fasta -p ${RANDOM} -f a -N autoMRE -x ${RANDOM}

# Move output files and clean up.
mv RAxML_info.run ../res/raxml/chloroplast.info.txt
mv RAxML_bipartitions.run ../res/raxml/chloroplast.tre
rm RAxML_*