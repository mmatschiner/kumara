# m_matschiner Wed Apr 18 10:27:38 CEST 2018

# Maximum-likelihood phylogenetics.
bash make_alignment.sh
bash run_gblocks.sh
bash run_raxml.sh

# Divergence-time estimation with RevBayes.
bash make_alignment_subset.sh
bash run_revbayes.sh

# Calculating genetic distances.
bash get_pairwise_distance.sh
bash plot_pairwise_distances.sh
