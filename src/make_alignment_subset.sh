# m_matschiner Wed Apr 18 10:34:30 CEST 2018

# Make a nexus-format subset of the alignment that includes only the two species batatas and trifida.
cat ../res/align/chloroplast.aligned.gblocks.fasta | sed 's/ //g' > tmp.fasta
python3 convert.py tmp.fasta ../res/align/chloroplast.aligned.gblocks.subset.nex -f nexus -p batatas trifida Bank

# Clean up.
rm tmp.fasta