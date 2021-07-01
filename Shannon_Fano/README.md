Shannon Fano In Octave
-----

WHAT IS SHANNON FANO CODING? 
Shannon Fano Algorithm is an entropy encoding technique for lossless data compression of multimedia. Named after Claude Shannon and Robert Fano, it assigns a code to each symbol based on their probabilities of occurrence. It is a variable length encoding scheme, that is, the codes assigned to the symbols will be of varying length. 

HOW DOES IT WORK? 
The steps of the algorithm are as follows:  

Create a list of probabilities or frequency counts for the given set of symbols so that the relative frequency of occurrence of each symbol is known.
Sort the list of symbols in decreasing order of probability, the most probable ones to the left and least probable to the right.
Split the list into two parts, with the total probability of both the parts being as close to each other as possible.
Assign the value 0 to the left part and 1 to the right part.
Repeat the steps 3 and 4 for each part, until all the symbols are split into individual subgroups.
The Shannon codes are considered accurate if the code of each symbol is unique.

SOURCE : https://www.geeksforgeeks.org/shannon-fano-algorithm-for-data-compression/

![](https://github.com/AlexandrosPanag/My_Octave_Projects/blob/main/Shannon_Fano/image_2021-07-02_020924.png)
