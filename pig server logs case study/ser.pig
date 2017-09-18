sam = Load '/home/hduser/sample.xlsx'using PigStorage(' ')as (samdate,samtime:int,samname:chararray,logs:chararray,id:chararray);
sam_filtered = FILTER sam by logs == 'ERROR';
dump sam_filtered;
--a = FOREACH sam_filtered GENERATE logs, '1';
--x = group a all;
--p = FOREACH x GENERATE group,COUNT (a) as headcount;
--dump p;


