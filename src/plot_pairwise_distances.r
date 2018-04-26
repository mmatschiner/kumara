# m_matschiner Thu Apr 19 12:11:27 CEST 2018

# Get the command-line arguments.
args <- commandArgs(trailingOnly = TRUE)
dist_all_table_file_name <- args[1]
dist_banks_and_solander_table_file_name <- args[2]
plot_file_name <- args[3]

t_all <- read.table(dist_all_table_file_name,header=T)
t_banks_and_solander <- read.table(dist_banks_and_solander_table_file_name,header=T)
p1 <- hist(t_all$absolute_distance,breaks=seq(0,120,2))
p2 <- hist(t_banks_and_solander$absolute_distance,breaks=seq(0,120,2))
pdf(plot_file_name, height=7, width=7)
plot(p1,col="#2aa198",main="Pairwise genetic distances within CL1",xlab="Number of substitutions")
plot(p2,col="#cb4b16",add=T)
dev.off()