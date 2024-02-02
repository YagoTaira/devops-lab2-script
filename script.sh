#! /bin/bash

rm -R fol_1
rm -R fol_2
mkdir fol_1
mkdir fol_2
cd fol_1
touch 1_1.txt
touch 1_2.txt
touch 1_3.txt
cd ../fol_2
touch 2_1.txt
touch 2_2.txt
touch 2_3.txt
cd ..
touch .gitignore
echo ".gitignore" >> .gitignore
echo fol_1 >> .gitignore
echo fol_2 >> .gitignore
git init
git add .
git commit -m "First commit"
git remote add origin https://github.com/YagoTaira/devops-lab2-test-script.git
git branch -M main
git push -u origin main
