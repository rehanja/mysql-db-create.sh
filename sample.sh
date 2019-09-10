#!/bin/bash
echo "number of records?"
read numberOfRecord


for i in $(seq 1 $numberOfRecord)
do
mysql -u root -ppassword school <<EOF
INSERT INTO  student(reg_id,name,subject,marks )
VALUES (
    'id$i',
    'name$i',
    'Buddhist',
    round(rand() * 100,2)
    ),
    (

    'id$i',
    'name$i',
    'Sinhala',
    round(rand() * 100,2)),

 (

   'id$i',
    'name$i',
    'English',
    round(rand() * 100,2)),

 (

   'id$i',
    'name$i',
    'Literature',
    round(rand() * 100,2)),

 (

    'id$i',
    'name$i',
    'Maths',
    round(rand() * 100,2)),

(

    'id$i',
    'name$i',
    'Social Study',
    round(rand() * 100,2)),
 (

    'id$i',
    'name$i',
    'History',
    round(rand() * 100,2)),

(

    'id$i',
    'name$i',
    (CASE CEIL(RAND()*3)
        WHEN 1 THEN 'Art'
        WHEN 2 THEN 'Computer'
        WHEN 3 THEN 'Literature'
        END),
    round(rand() * 100,2));
EOF

done