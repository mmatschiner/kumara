# m_matschiner Wed Apr 18 00:11:32 CEST 2018

# Run gblocks.
gblocks ../res/align/chloroplast.aligned.fasta -t d 

# Remove spaces in the gblocks output alignment.
cat ../res/align/chloroplast.aligned.fasta-gb | tr -s " " > ../res/align/chloroplast.aligned.gblocks.fasta

# Clean up.
rm ../res/align/chloroplast.aligned.fasta-gb
rm ../data/fasta/chloroplast.aligned.fasta-gb.htm