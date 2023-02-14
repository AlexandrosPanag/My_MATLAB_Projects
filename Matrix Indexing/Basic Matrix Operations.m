%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

clc; clear;

# [ 9 2 16 ]
# [13 6 9  ]
# [ 7 4 4  ]


A = [ 9, 2, 16; 13, 6, 9; 7, 4, 4 ]  #making a matrix

# I.Swap the first and the second row of the Index (Matrix)
X = [1,2];
W=A;
W(X,:) = W(X([1,2]),:)

# II. Setting a certain element with zero

W(2,1)=0;

# III. Multiplying the third row with random numbers

r = randi(3,3)

W(2,1) = W(2,1)*r(2,1);
W(2,2) = W(2,2)*r(2,2);
W(2,3) = W(2,3)*r(2,3);

# III. Addding the third row with random numbers

rr = randi(3,3)

W(2,1) = W(2,1)+rr(2,1);
W(2,2) = W(2,2)+rr(2,2);
W(2,3) = W(2,3)+rr(2,3);


# IV. Swapping the rows IF absolute 2.3 is greater than absolute 3 3

M=W
KEEPERFIRST=M([2], :)
KEEPERSECOND=M([3], :)

if abs(M(2,3))>abs(M(3,3))
  M([2], :) = KEEPERSECOND
  M([3], :) = KEEPERFIRST
end

# V. P=xAy
P=W

x = randi(9, 5, 1);
y = randi(9, 5, 1);
P = x*pinv(y);
xc = P*y;
xc = P*y;