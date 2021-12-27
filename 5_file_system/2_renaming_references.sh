# Moving linked files to another directory:-----------------
rm -rd results
mkdir "results"
mv file3 results
mv file4 results
cd results
ls -li 1> result.log
cd ..
