# By Alexandros Panagiotakopoulos

clc; clear;

%creating a random matrix
max=10; % creating an array with 10 elements
x=[];
for i=1:max
x(i)=randi([-9 9])
end

%finding the element
 maxval = x(1);
 for ii = 1:length(x)
    if x(ii) > maxval
        maxval = x(ii);
    end
 end
