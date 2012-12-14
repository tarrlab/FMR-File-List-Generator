# This gets the variables passed from the applescript: 
  # subject_dirs is the list of paths to each _BV folder)
  # target_FMR_list is the list of paths to each target FMR file)
  # textfile_name is what the user wants the text file to be named

subject_dirs    = ARGV[0]
target_FMR_list = ARGV[1]
textfile_name   = ARGV[2]

# Overwrite the textfile_name variable with the name plus extension ".txt"
textfile_name = textfile_name + ".txt"

# Parse the subject_dirs and target_FMR_list strings that were passed from the AppleScript
subject_dirs = subject_dirs.split("%%%")
target_FMR_list = target_FMR_list.split("%%%")

# Create empty array for "subjects" hash
subjects = []

# Copy each path in subject_dirs to the "subjects" hash, with key :base_path
subject_dirs.each do |dir|
   subjects << { :base_path => dir }
end

# Copy each path in target_FMR_list to the "subjects" hash, with key :target_fmr
target_FMR_list.each_with_index do |targetFMR_path, i|
  subjects[i][:target_fmr] = targetFMR_path
end

# Populate "subjects" hash with the path to all FMR files in each person's _BV folder
subjects.each do |subject|
  # Search the contents of the subject's _BV folder for files ending in "*.fmr," 
  # Copy the paths of matching files to "subjects" hash with key :fmr_files 
  bv_dir_entries      = Dir.entries(subject[:base_path])
  subject[:fmr_files] = bv_dir_entries.grep(/^.+fmr/) { |match| File.join(subject[:base_path], match) }
end

# Make a single array with all FMR files from all subjects (this is what we'll write to the text file)
all_fmr_files = subjects.map { |subject| subject[:fmr_files] }.flatten

# Make a new text file with the name the user entered, with write capabilities ("w")
text_file = File.new(textfile_name, "w")
  # Print the total number of FMR files to be procsessed
  text_file.puts(all_fmr_files.size)
  # Print all FMR file paths
  text_file.puts(all_fmr_files)
  # Print "TARGETFMRs"
  text_file.puts("TARGETFMRs")
  # Print the path to each subject's target FMR file as many times as the number of FMR files in that subject's _BV directory
  # NOTE: this is the reason for indexing with hash/key above (in case each subject has a different
  # number of FMR files, for example if you have two subjects from separate studies)
  subjects.each do |subject|
    subject[:fmr_files].size.times do
      text_file.puts(subject[:target_fmr])
    end
  end
# Close the text file
text_file.close
  