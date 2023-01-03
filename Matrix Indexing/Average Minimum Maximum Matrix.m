%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

function ave = average(z)
     z = 1:99; %declaring the array again to avoid octave bugs
    ave = sum(z(:))/numel(z); %finding the average value
    disp("Average is: ") %displaying a message
    disp(ave) %displaying the average
end;

function maxfun = maximum(z)
     z = 1:99; %declaring the array again to avoid octave bugs   
     maxfun = max(z); %finding the maximum value
     disp("Maximum is: ")  %displaying a message
     disp(maxfun) %displaying the maximum
end;

function minfun = minimum(z)
     z = 1:99; %declaring the array again to avoid octave bugs   
     minfun = min(z); %finding the minimum
     disp("Minimum is: ") %displaying a message
     disp(minfun) %displaying the minimum
end;

z = 1:99;% declaring the array 
ave = average(z) %displaying the average
maxfun = maximum(z) %displaying the maximum
minfun = minimum(z) %displaying the minimum


