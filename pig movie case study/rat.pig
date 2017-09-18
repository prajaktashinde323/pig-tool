movie = Load '/home/hduser/moviedetails.txt'using PigStorage(',')as (movieid:int,moviename:chararray,year:chararray,rating:double,movieduration:chararray);
movie_filtered = FILTER movie by rating >=3.9;
--dump movie_filtered;
A = FOREACH movie_filtered GENERATE rating,'1';
X = group A  all;
P = FOREACH X GENERATE group, COUNT(A) as headcount;
dump P;

