%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

pkg load communications
pkg load image
#a:1, b:2, c:3, d:4
initial = [1 1 1 1 1 2 3 3 3 4 4] #STARTING MESSAGE
N = length(initial) 
countA = sum(initial == 1)
countB = sum(initial == 2)
countC = sum(initial == 3)
countD = sum(initial == 4)

#we split the letter occurance into 4 groups
#cw = shannonfanodict (1:4, [0.5 0.10 0.30 0.20]) #1-a, 2-b, 3-c, 4-d
cw = shannonfanodict (1:4, [countA/N countB/N countC/N countD/N]) #1-a, 2-b, #3-c, 4-d

encoded = shannonfanoenco (1:4, cw) #1/4 split
decoded = shannonfanodeco (encoded, cw) #decoded
