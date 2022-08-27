clear all;
clc
Fs = 20e3;                             
T = 1/Fs;                
L = 1000;             
t = (0:L-1)*T;       
f0=1000;
A=5;
X=A*(sin(f0*2*pi*t)+((1/3)*sin(3*f0*2*pi*t))+((1/5)*sin(5*f0*2*pi*t))+((1/7)*sin(7*f0*2*pi*t)));
% plot(20*t,X)
% title('Signal')
% xlabel('t (milliseconds)')
% ylabel('X(t)')

Y = fft(X);
P2 = 2.*(fftshift(abs(Y/L)));
f = Fs*((-L/2):(L/2)-1)/L;
plot(f,P2) 
title('Escpetro de amplitud X(t)')
xlabel('f (Hz)')
ylabel('|P2(f)|')
