path_list       = ARGV[0]
target_FMR_list = ARGV[1]
textfile_name   = ARGV[2]

textfile_name = textfile_name + ".txt"

path_list = path_list.split("%%%")
target_FMR_list = target_FMR_list.split("%%%")

# path_list = ["/Users/deborahjohnson/Dropbox/Matt and Debs Stuff!/Subjects/S01", "/Users/deborahjohnson/Dropbox/Matt and Debs Stuff!/Subjects/S02"]
# target_FMR_list = ["/Users/deborahjohnson/Dropbox/Matt and Debs Stuff!/Subjects/S01/_BV-S01/KJ_5116_Post_Loc2_firstvol.fmr", "/Users/deborahjohnson/Dropbox/Matt and Debs Stuff!/Subjects/S02/_BV-S02/S2_5116_Post_Loc2_firstvol.fmr"]

# Create empty array for "subjects" hash
subjects = []

# Copy the path of each subject's main directory to the "subjects" hash, with key :base_path
path_list.each do |dir|
   subjects << { :base_path => dir }
end

# Copy path to each subject's target FMR file to the "subjects" hash, with key :target_fmr
target_FMR_list.each_with_index do |targetFMR_path, i|
  subjects[i][:target_fmr] = targetFMR_path
end

# Populate "subjects" hash with the path to each subject's _BV folder, and the path to all FMR files in each subject's _BV folder
subjects.each do |subject|
  # Get the path to each subject's _BV folder, add it to "subjects" hash with key :bv_path
  base_dir_entries  = Dir.entries(subject[:base_path])
  subject[:bv_path] = base_dir_entries.grep(/_BV.+/) { |match| File.join(subject[:base_path], match) }.first

  # Search the contents of each subject's _BV folder for files ending in "*.fmr," 
  # Copy the paths of matching files to "subjects" hash with key :fmr_files
  bv_dir_entries      = Dir.entries(subject[:bv_path])
  subject[:fmr_files] = bv_dir_entries.grep(/^.+fmr/) { |match| File.join(subject[:base_path], match) }
end

# Make a single array with all FMR files (from all subjects)
all_fmr_files = subjects.map { |subject| subject[:fmr_files] }.flatten

text_file = File.new(textfile_name, "w")

  text_file.puts(all_fmr_files.size)
  text_file.puts(all_fmr_files)
  text_file.puts("TARGETFMRs")
  
  # Print the path to each subject's target FMR file as many times as the number of FMR files in that subject's _BV directory
  # NOTE: this is the reason for indexing with hash/key above (in case each subject has a different
  # number of FMR files, for example if you have two subjects from separate studies)
  subjects.each do |subject|
    subject[:fmr_files].size.times do
      text_file.puts(subject[:target_fmr])
    end
  end
text_file.close
  