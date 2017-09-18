cust = Load '/home/hduser/custs.txt'using PigStorage(',')as (custno:chararray,firstname,lastname,age:int,profession:chararray);
cust_filtered = FILTER  cust by profession =='Actor';
--dump cust_filtered;
--cust_filtered_COUNT = foreach cust generate COUNT(custno);
--dump cust_filtered_COUNT;
A = FOREACH cust_filtered GENERATE profession,'1';
X = group A all;
P = FOREACH X GENERATE group, COUNT(A)as headcount;
dump P;



