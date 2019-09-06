#!/bin/sh

echo "reg_id"
read reg_id
echo "name"
read name
echo "subject"
read subject
echo " marks"
read  marks



mysql -u root -ppassword school << EOF
INSERT INTO student(reg_id,name,subject,marks) VALUES ("$reg_id" ,"$name", "$subject" , "$marks");
	
EOF

 



