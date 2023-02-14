# By Alexandros Panagiotakopoulos - alexandrospanag.github.io

% SOURCES USED:https://www.researchgate.net/figure/Pseudo-code-explaining-the-Gauss-Jordan-algorithm-for-matrix-inversion-adapted-to-GPU_fig3_259095161
%https://www.geeksforgeeks.org/finding-inverse-of-a-matrix-using-gauss-jordan-method/
%ΑΠΕΙΡΙΣΤΙΚΟΣ ΛΟΓΙΣΜΟΣ Ι & MATLAB ΑΠΟ ΜΙΧΑΛΗ ΓΛΑΜΠΕΔΑΚΗ - ΑΝΤΩΝΗ ΓΛΑΜΠΕΔΑΚΗ

clc; clear;
format long %optional code to be removed if we want to remove long numerical format

% Inversion Matrix Searching Algorithm - Check if the Matrix can be Invertedul
function Minv = ComputeInverseMatrix(A)

% Find dimensions of input matrix
[r,c] = size(A);

% If input matrix is not square, stop function
if r ~= c
    disp('Error! Please give a square Matrix!')
    b = [];
    return
end
maxsize = size(A);
fil=maxsize(1,1);
col=maxsize(1,2);
%Diagonal matrix identification search
for k = 1:fil,
   %creating the pivot method
   may = abs(A(k,k));
   pos = k;
   inv_matrix=A,
   for i=k+1:fil,
      if may < abs(A(i,k))
         may=abs(A(i,k));
         aux=A(i,:);
       A(i,:)=A(k,:);
       A(k,:)=aux;
      end
   end
   inv_matrix=A;
   %finishing the pivot
   for i = 1:fil,
      if i ~= k
         pivot=A(i,k)/A(k,k);
         for j = k:col,
            A(i,j) = A(i,j) - pivot*A(k,j);
         end
      end
      inv_matrix=A
   end
end
%Printing the matrix gauss-jordan identified elements ex.(1 0 0,0 1 0,0 0 1)
for i = 1:fil,
   A(i,col)= A(i,col)/A(i,i);
   A(i,i)=1;
end
inv_matrix=A
endfunction

%Taking the user input & calling the matlab functions
A = input('Enter your Matrix (ex.[1 2 3;4 5 6;7 8 9]): ');
ComputeInverseMatrix(A)
