clc; clear all; close all;



%Creating the first sign
x1 = [1 0 1 1 5 -3 20 -8 0 0]; %tValues of sign
N = length (x1); %length of sign
a = 3; %multiplying factor
for n=0:N-1
    x2(n+1)=a*x1(n+1);
end
%displaying the sign
n= [0:N-1]; %time moments
hold on;


title('Subplot 1: sin(x)')
grid on;
plot(n,x1,'b.:');
grid on;
plot(n,x2,'r*-');
legend('x_1' , 'x_2');

%question 2
   %finding the max value of each sign
x1max=max(x1);
x2max=max(x2);
%displaying the max value of each sign
disp(x1max);
disp(x2max);
%end of question 2

%creating the third sign / sign difference
x3=x2-x1;
figure;plot(x3);
legend('x_3 difference');

grid on;
xlabel('n');