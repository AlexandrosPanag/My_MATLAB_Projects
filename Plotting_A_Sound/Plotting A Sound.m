%
% By Alexandros Panagiotakopoulos - alexandrospanag.github.io
%

% WARNING : keep the volume down or it may damage your ears!!
 
fc=3000
fdel=500
F=0.001
dur=15

t = [0:F:dur];  % time index
x = cos(2*pi*(fc+fdel)*t)+ cos(2*pi*(fc-fdel)*t);       
plot(t,x);   % plot signal
axis([0 127 -20 20]); %plotting the axis
title('Sinusoidal signal x(t)');
xlabel('Time t (sec)');
ylabel('Amplitude');
grid on;
soundsc(x, 1/F);
z = beatfreq(3000, 500, 0.001, 15);
