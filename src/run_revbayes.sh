# m_matschiner Wed Apr 18 10:31:36 CEST 2018

# Make the revbayes result directory if it doesn't exist yet.
mkdir -p ../res/revbayes

# Run revbayes.
rb chloroplast.rev

# Make a summary tree.
cat ../res/revbayes/chloroplast.aligned.gblocks.subset.trees | tail -n +2 | cut -f 5 > ../res/revbayes/chloroplast.aligned.gblocks.subset.tmp.trees
treeannotator -heights mean -b 25 ../res/revbayes/chloroplast.aligned.gblocks.subset.tmp.trees ../res/revbayes/chloroplast.aligned.gblocks.subset.mcc.tre

# Clean up.
rm history.txt
rm ../res/revbayes/chloroplast.aligned.gblocks.subset.tmp.trees