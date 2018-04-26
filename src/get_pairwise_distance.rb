# m_matschiner Thu Apr 19 10:18:30 CEST 2018

# Get the command-line arguments.
input_file_name = ARGV[0]
seq_id1 = ARGV[1]
seq_id2 = ARGV[2]

# Read the input file.
input_file = File.open(input_file_name)
input_lines = input_file.readlines
seq1 = ""
seq2 = ""
input_lines.each do |l|
	line_ary = l.strip.split
	if line_ary[0] == seq_id1
		seq1 = line_ary[1]
	end
	if line_ary[0] == seq_id2
		seq2 = line_ary[1].upcase
	end
end

# Make sure that both sequences are found.
if seq1.size == 0 or seq2.size == 0
	puts "ERROR: One or both of the sequences could not be identified!"
	exit 1
end

# Make sure that both sequences have the same length.
unless seq1.size == seq2.size
	puts "ERROR: The two sequences differ in length!"
	exit 1
end

# Compare the two sequences.
nucleotides = ["A", "C", "G", "T"]
sites_without_difference = 0
sites_with_difference = 0
seq1.size.times do |pos|
	if nucleotides.include?(seq1[pos]) and nucleotides.include?(seq2[pos])
		if seq1[pos] == seq2[pos]
			sites_without_difference += 1
		else
			sites_with_difference += 1
		end
	end
end
proportional_distance = sites_with_difference / (sites_with_difference + sites_without_difference).to_f

# Report the distance.
puts "#{input_file_name}\t#{seq_id1}\t#{seq_id2}\t#{sites_with_difference}\t#{(sites_with_difference + sites_without_difference)}\t#{proportional_distance}"