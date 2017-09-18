movie = Load '/home/hduser/moviedetails.txt'using PigStorage(',')as (movieid:int,moviename:chararray,year:chararray,movierating:double,movieduration:chararray);
movie_filtered = FILTER movie by movieduration <='5400';
dump movie_filtered;
--A = FOREACH movie_filtered GENERATE movieduration;
--X = group A all;
--P = FOREACH X GENERATE group, COUNT(A) as headcount;
--dump P;

