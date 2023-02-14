%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

% SOURCES USED:https://www.researchgate.net/figure/Pseudo-code-explaining-the-Gauss-Jordan-algorithm-for-matrix-inversion-adapted-to-GPU_fig3_259095161
%https://www.geeksforgeeks.org/finding-inverse-of-a-matrix-using-gauss-jordan-method/
%ΑΠΕΙΡΙΣΤΙΚΟΣ ΛΟΓΙΣΜΟΣ Ι & MATLAB ΑΠΟ ΜΙΧΑΛΗ ΓΛΑΜΠΕΔΑΚΗ - ΑΝΤΩΝΗ ΓΛΑΜΠΕΔΑΚΗ

clc; clear;
format long %optional code to be removed if we want to remove long numerical format

%factorization with pivoting
function [L, U, P] = LU_factorizationWithPivoting(A)
    [m, n] = size(A); L=eye(n); P=eye(n); U=A;
    for k=1:m-1
        pivot=max(abs(U(k:m,k)))
        for j=k:m
            if(abs(U(j,k))==pivot)
                ind=j
                break;
            end
        end
        U([k,ind],k:m)=U([ind,k],k:m)
        L([k,ind],1:k-1)=L([ind,k],1:k-1)
        P([k,ind],:)=P([ind,k],:)
        for j=k+1:m
            L(j,k)=U(j,k)/U(k,k)
            U(j,k:m)=U(j,k:m)-L(j,k)*U(k,k:m)
        end
        pause;
    end
end

%Taking the user input & calling the matlab functions
A = input('Enter your Matrix (ex.[1 2 3;4 5 6;7 8 9]): ');
LU_factorizationWithPivoting(A)
