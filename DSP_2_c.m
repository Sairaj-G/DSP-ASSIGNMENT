clc;
close all;

T = 1/100; %Sampling time



b = [1 2 1]; 
a = [40401 -79998 39601];

%H(z) numerator and denominator 

[H,w] = freqz(b,a,512,"whole");


subplot(2,1,1);
plot(w,abs(H));                                           % Plotting the magnitude response
title("magnitude response");
xlabel("frequency in Rads");
ylabel("|H(e^(jw))|");

subplot(2,1,2);
plot(w,angle(H));
title("phase response");                                  % Plotting the phase response
xlabel("frequency in Rads");
ylabel("< H(e^(jw))");
