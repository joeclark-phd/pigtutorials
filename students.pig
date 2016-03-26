A = LOAD 'students.txt' AS (name:chararray, age:int, gpa:float);
B = GROUP A BY age;
C = FOREACH B GENERATE group, A.name;
STORE C into 'output' USING PigStorage('|');

