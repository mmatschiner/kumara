# m_matschiner Tue Apr 17 23:55:12 CEST 2018

# Extract sequences from archive.
unzip ../data/Chloroplast_sequences.zip -d ../data/

# Concatenate all sequences to a single file.
cat ../data/Chloroplast_sequences/*.fasta > ../data/chloroplast.fasta

# Align sequences with mafft.
mafft --auto ../data/chloroplast.fasta > ../res/align/chloroplast.aligned.fasta