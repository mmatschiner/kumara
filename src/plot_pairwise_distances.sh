# m_matschiner Thu Apr 19 12:11:25 CEST 2018

# Make the result directory if it doesn't exist yet.
mkdir -p ../res/plots

# Plot the pairwise distances.
rscript plot_pairwise_distances.r ../res/tables/dists.all.txt ../res/tables/dists.banks_and_solander.txt ../res/plots/dists.pdf

# Clean up.
rm Rplots.pdf