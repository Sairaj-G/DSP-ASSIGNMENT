clc;
close all;

f = 0:0.02:5;                                               % frequency axis

w= 2.*pi.*f;                                              % angular frequency axis

H = (1./ (1-(w.^2)+ (1i.*2*w) ));                         % frequency response calculation

subplot(2,1,1);
plot(f,abs(H));                                           % Plotting the magnitude response
title("magnitude response");
xlabel("frequency in Hz");
ylabel("|H(jw)|");

subplot(2,1,2);
plot(f,angle(H));
title("phase response");                                  % Plotting the frequency response
xlabel("frequency in Hz");
ylabel("H(jw)");