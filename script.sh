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
echo ".gitignore" > .gitignore
echo fol_1 > .gitignore
echo fol_2 > .gitignore

chmod 600 fol_1/1_1.txt
chmod 600 fol_1/1_3.txt
chmod 600 fol_2/2_1.txt
chmod 600 fol_2/2_3.txt
chmod 000 fol_1/1_2.txt
chmod 000 fol_2/2_2.txt

touch README.md
echo "# Week 2 Lab - Bash & Git" > README.md
echo "Yago Taira x19238568" >> README.md
echo "[devops-lab2-test-script](https://github.com/YagoTaira/devops-lab2-script.git)" >> README.md
echo "---" >> README.md
echo "To run the script.sh run: \`bash script.sh\`" >> README.md

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/YagoTaira/devops-lab2-script.git
git push -u origin main

echo Job Completed
