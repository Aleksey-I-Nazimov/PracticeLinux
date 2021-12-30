# Making sub-directory:----------------------------------------------
cd developer_directory
mkdir tmpdir
chmod +t tmpdir

# Making directory with changed owner:-------------------------------
mkdir test
cd test
sudo chown dev1:developer -R .
