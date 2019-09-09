#!/bin/bash

mysql -u root -p"" << EOF

use school;

EOF

echo -n "Enter numebr of Students to enroll"

read i

echo -n "Enter marks"

read marks

for (( i=1; i‹= 10; i++ ))

do   

for((sub=1; sub‹= 8; sub++ ))

do

echo "Enter subject name"

read subject

if [$marks=y | y<=100 | y>=0] then

<< EOF

insert into student('reg_id$i',$subject,$marks)

EOF

echo Record Inserted

done

done