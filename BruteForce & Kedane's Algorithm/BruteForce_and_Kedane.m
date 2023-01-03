%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

# USEFUL SOURCES THAT WERE USED: https://www.alphacodingskills.com/c/pages/c-program-maximum-subarray-problem.php
# USEFUL LINK THAT WAS USED:https://doi.org/10.1016/s1571-0661(04)00313-5
# USEFUL LINK THAT WAS USED: https://www.jstage.jst.go.jp/article/iis/6/2/6_2_99/_pdf
clc; clear -all;

%creating a random matrix
max=10; % creating an array with 10 elements
x=[];
for i=1:max
x(i)=randi([-9 9])
endfor

%finding the subarray using BRUTE FORCE
 brute_matrix=x;
 max_sum=0;
 current_sum=0;
 %ALTERNATIVE COSTUM MATRIX: brute_matrix=[-3, 1, -8, 12, 0, -3, 5, -9, 4]
 max_sum = 0;
 for i = 1:length(brute_matrix)
   current_sum = current_sum + brute_matrix(i);
   if current_sum < 0
   current_sum=0;
   endif
   if max_sum < 0
   max_sum = current_sum;
   endif
 endfor


% finding the subarray using Kadane's Algorithm
  kadane_matrix=x;
  % ALTERNATIVE COSTUM MATRIX:kadane_matrix=[-3, 1, -8, 12, 0, -3, 5, -9, 4]
  kadane_max_sum = 0;
  kadane_current_sum = 0;

  kadane_max_start = 0;
  kadane_max_end = 0;
  kadane_current_start = 0;
  kadane_current_end = 0;

  for i=1:length(kadane_matrix)
    kadane_current_sum = kadane_current_sum + kadane_matrix(i);
    kadane_current_end = i;

    if kadane_current_sum < 0
      kadane_current_sum = 0;
      %Start a new sequence from next element
      kadane_current_start = kadane_current_end + 1;
    endif

    if kadane_max_sum < kadane_current_sum
      kadane_max_sum = kadane_current_sum;
      kadane_max_start = kadane_current_start;
      kadane_max_end = kadane_current_end;
    endif
  endfor
plot(@(n) [1, log(n), n], [1 10])

% BRUTE FORCE PYTHON ORIGINAL CODE
% def brute_force(a_list):
%    """
%    Find max subarray from a_list using brute force.
%    """

    % initialize returns
%    max_sum, start, end = a_list[0], 0, 0

    # brute force
%    for i in range(len(a_list)):
%        for j in range(i, len(a_list)):
%            sum = 0
%           for x in range(i, j + 1):
%               sum += a_list[x]
%            # replace starting and ending positions if a larger sum is found
%            if max_sum < sum:
%                max_sum, start, end = sum, i, j

%    return max_sum, start, end


% KEDANE PYTHON ORIGINAL CODE

%def kadane_table_generator(a_list):
%    """
%    Generate kadane table for a_list
%    """
%    kadane_table = list()
%    for index, num in enumerate(a_list):
%        sum = num if index == 0 else num + kadane_table[index - 1]
%        kadane_table.append(0 if sum < 0 else sum)

%    return kadane_table


%def kadane(a_list):
%    """
%    Find max subarray from a_list using kadane algorithm.
%    """
%    # initialize returns
%    max_sum, start, end = a_list[0], 0, 0
%
%    # generate kadane table
%    kadane_table = kadane_table_generator(a_list)
%
%    # find max and ending position
%    for index, sum in enumerate(kadane_table):
%        if max_sum < sum:
%            max_sum, end = sum, index

%    # find starting position
%    for i in range(end, 0, -1):
%        if kadane_table[i] == 0:
%            start = i + 1
%            break

%   return max_sum, start, end
