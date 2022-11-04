%
% By Alexandros Panagiotakopoulos
%

clc; clear;
fid = fopen('temperatures.txt', 'wt');
N = 20;
for i=0:N
 fprintf(fid, '%d %d', i*5, ((i*5)*9)/5+32);
 if i~=N, fprintf(fid, '\n'); end
end
fclose(fid);
