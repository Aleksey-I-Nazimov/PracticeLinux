# Creating file1:---------------------------------
touch file1
echo "Linux mc cat touch sudo rmdir ifconfig netstat tulpn" > file1

# Creating file2 by copying:---------------------- 
rm -f file2
cat file1 > file2

# Creting file3 as a soft link of the file1:------
rm -f file3
ln -s file1 file3

# Creating file4 as a hard link of the file1:-----
rm -f file4
ln file1 file4

# Showing linked files:---------------------------
ls -li file1 file2 file3 file4

# Hardly linked file has the same i-node
# Soft link has not the same i-node. It's like a copy
# To remove soft link the 'unlink' command is proposed
# Not unlinked softly files are broken after removing

