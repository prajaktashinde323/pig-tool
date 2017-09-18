sam = Load '/home/hduser/sample.csv'using PigStorage(' ')as (samdate,samtime:int,samname:chararray,logs:chararray,id:chararray);
--dump sam;
groupbylogs = group sam by logs;
countbylogs = foreach groupbylogs generate group as logs, COUNT(sam) as headcount  ;
--dump countbylogs;
R = group countbylogs all;
N =  foreach R generate MAX(countbylogs.headcount);
dump N;












