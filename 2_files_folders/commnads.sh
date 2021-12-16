mkdir students
mkdir mentors
cd students
echo "Nazimov,Gobelkov,Falaeva,Solorev,Fando,Vihlahcev" > students_list.txt
cd ../mentors
echo "Tektova,Ivanov,Gogolev,Mineev" > mentors_list.txt
cp mentors_list.txt ../students/mentors_list.txt
rm mentors_list.txt
cd ..
rm mentors -d
mv students students_and_mentors
# rm students_and_mentors

