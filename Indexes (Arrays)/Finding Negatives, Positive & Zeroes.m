function calc = calculation(A)
  A = [-1,-2,-3,-4,-5,-6,0,1,2,3,4,5,6,7,8,9,10]
  s=sign(A) %we give the array a sign to determine the positions
  var_positive=sum(s(:)>-1) %we count the positive numbers, including 0
  var_negative=sum(s(:)==-1) %we count the negative numbers
  disp("The positive number ammount is: " ) %we display a message
  disp(var_positive) %we display the ammount of positive numbers, including 0
  disp("The negative number ammount is: ") %we display a message
  disp(var_negative) %we display the ammount of negative numbers 
  % hasZeros=sum(s(:)== 0) bonus if we want to check the number of 0s
end;



A = [-1,-2,-3,-4,-5,-6,0,1,2,3,4,5,6,7,8,9,10] %we create the index/array
calc = calculation(A) %we call the function