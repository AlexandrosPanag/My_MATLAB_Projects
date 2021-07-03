
[y1,Fs1] = audioread('OCTAVE_bass.wav');
[y2,Fs2] = audioread('OCTAVE_drums.wav');
[y3,Fs3] = audioread('OCTAVE_guitar.wav');
[y4,Fs4] = audioread('OCTAVE_synthesizer.wav');
%sound(y1,2*Fs1)
%%%
%%%play 3 seconds of audio of each file
% sound(y1(1:10*Fs1),Fs1);

clear sound
% sound(y2(1:3*Fs2),Fs2);

clear sound
% sound(y3(1:3*Fs3),Fs3);


figure;
subplot(3,1,1), plot(y1);
subplot(3,1,2), plot(y2);
subplot(3,1,3), plot(y3);
subplot(3,1,3), plot(y4);

%View the lengths of each files
l1=length(y1);
l2=length(y2);
l3=length(y3);
l4=length(y4);

%compute how many seconds
t1=l1/Fs1
t2=l2/Fs2
t3=l3/Fs3
t4=l4/Fs4

%add 9 secodns
tt = 9*Fs1;
x = y1(1:tt)+y2(1:tt)+y3(1:tt)+y4(1:tt);
sound(x,Fs1)


