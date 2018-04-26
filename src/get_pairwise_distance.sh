# m_matschiner Thu Apr 19 10:43:13 CEST 2018

# Make the output directory if it doesn't exist yet.
mkdir -p ../res/tables

# Set the input and output files.
infile="../data/fasta/chloroplast.aligned.gblocks.subset.nex"
table_all="../res/tables/dists.all.txt"
table_banks_and_solander="../res/tables/dists.banks_and_solander.txt"

# Write the header line.
echo -e "input_file\tseq1\tseq2\tabsolute_distance\tn_sites\tproportional_distance" > ${table_all}
echo -e "input_file\tseq1\tseq2\tabsolute_distance\tn_sites\tproportional_distance" > ${table_banks_and_solander}

# Calculate distances among all specimens of the CL1 clade.
for spc1 in I_batatas_CIP441416 I_batatas_CIP441427 I_batatas_CIP400433 I_batatas_CIP420068 Banks_and_Solander I_batatas_CIP420386 I_batatas_CIP401523 I_batatas_CIP400941 I_batatas_CIP441177 I_batatas_CIP400157 I_batatas_CIP441314 I_batatas_CIP420602 I_batatas_DMC_407 I_batatas_CIP440615 I_batatas_CIP400218 I_batatas_CIP440551 I_batatas_CIP400453 I_batatas_CIP400786 I_batatas_MN_37607 I_batatas_CIP400423 I_batatas_CIP400551 I_batatas_CIP420882 I_batatas_CIP400287 I_batatas_CIP400033
do
	for spc2 in I_batatas_CIP441416 I_batatas_CIP441427 I_batatas_CIP400433 I_batatas_CIP420068 Banks_and_Solander I_batatas_CIP420386 I_batatas_CIP401523 I_batatas_CIP400941 I_batatas_CIP441177 I_batatas_CIP400157 I_batatas_CIP441314 I_batatas_CIP420602 I_batatas_DMC_407 I_batatas_CIP440615 I_batatas_CIP400218 I_batatas_CIP440551 I_batatas_CIP400453 I_batatas_CIP400786 I_batatas_MN_37607 I_batatas_CIP400423 I_batatas_CIP400551 I_batatas_CIP420882 I_batatas_CIP400287 I_batatas_CIP400033
	do
		if [ ! ${spc1} == ${spc2} ]
		then
			ruby get_pairwise_distance.rb ${infile} ${spc1} ${spc2} >> ${table_all}
		fi
	done
done

# Make a table only for the distances with the Banks and Solander specimen.
cat ${table_all} | grep Banks_and_Solander >> ${table_banks_and_solander}