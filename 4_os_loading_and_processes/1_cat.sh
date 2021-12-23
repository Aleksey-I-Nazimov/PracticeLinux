
# Creating the new file:----------------------------------------------
echo "" > 1_new_file_example.txt

# Reading all files (streaming errors):-------------------------------
set working_directory "/home/alex/dev/PracticeLinux/4_os_loading_and_processes"

cd ../3_users
find -type f
cat * > ../4_os_loading_and_processes/2_read_all_files.txt
cd /etc
cat * 1> /home/alex/dev/PracticeLinux/4_os_loading_and_processes/2_read_all_etc_files.txt 2> /home/alex/dev/PracticeLinux/4_os_loading_and_processes/2_read_all_etc_files_errors.txt
