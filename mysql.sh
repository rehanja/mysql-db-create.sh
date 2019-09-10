
create table student
(
reg_id int(10) AUTO_INCREMENT PRIMARY KEY,
name varchar(20) not null,
subject varchar(20) NOT NULL,
marks int(10)
);

 #run following line multiple times
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




  insert into student(reg_id , name , subject , marks) values(CONCAT( 'id' , $i ),@Name, (CASE CEIL(RAND()*3)
              WHEN 1 THEN 'Art'
              WHEN 2 THEN 'Computer'
              WHEN 3 THEN 'Literature'
          END) , ROUND(((100 - 1 + 1) * Rand()+1),0));