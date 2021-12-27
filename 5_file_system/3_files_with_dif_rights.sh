# Creating file for user and group:--------------------------------------
touch "readWrittenFileForCreatorAndGroup"
echo "Something for reading" > readWrittenFileForCreatorAndGroup
chmod u+rw,g+rw,o+r readWrittenFileForCreatorAndGroup

# Creating file for user only:-------------------------------------------
touch "readWrittenFileForCreator"
chmod u+rw,g-rwx,o-rwx readWrittenFileForCreator

ls -li > results3.log

