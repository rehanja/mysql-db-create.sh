#!/bin/bash
echo "number of records?"
read numberOfRecord

for i in {1..$numberOfRecord}
do
mysql -u root -ppassword school <<EOF
INSERT INTO  student(name,subject,marks ) 

VALUES (
    
    char(round(rand()*25)+100),
    ' Buddhist',
    round(rand() * 100,2)),

(
  char(round(rand()*25)+100),
    'Sinhala',
    round(rand() * 100,2)),

 (
   char(round(rand()*25)+100),
    'English',
    round(rand() * 100,2)),

 (
   char(round(rand()*25)+100),
    ' Literature',
    round(rand() * 100,2)),

 (
    char(round(rand()*25)+100),
    ' Maths',
    round(rand() * 100,2)),

(
    char(round(rand()*25)+100),
    ' Social Study',
    round(rand() * 100,2)),
 (
    char(round(rand()*25)+100),
   'History',
    round(rand() * 100,2)),

(
    
    char(round(rand()*25)+100),
    (CASE CEIL(RAND()*3)    
        WHEN 1 THEN 'Art'
        WHEN 2 THEN 'Computer'
        WHEN 3 THEN 'Literature'
        END),
    round(rand() * 100,2));

 

EOF

done


