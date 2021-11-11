fid = fopen('letters.txt', 'wt');
N = 100;
for i=1:N
 fprintf(fid, '%d ', i );
 if i~=N, fprintf(fid, ' \n'); end
end
fclose(fid);
