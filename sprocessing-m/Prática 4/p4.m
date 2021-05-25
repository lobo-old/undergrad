clear all; close all; clc;

x = randn(1,1000);
y = randn(1,1000);

plot(x,y,'o');

z = 0.25*x + sqrt(1-0.25)*y;
figure
plot(x,z,'o');

z = 0.5*x + sqrt(1-0.5)*y;
figure
plot(x,z,'o');

z = 0.75*x + sqrt(1-0.75)*y;
figure
plot(x,z,'o');


[Rxy,L] = xcorr(x,y,'coeff');
figure;
plot(L,Rxy);


[Rxz,L] = xcorr(x,z,'coeff');
figure;
plot(L,Rxz);

[Rxx,L] = xcorr(x,x,'coeff');
figure;
plot(L,Rxx);
title('Autocorrelação de um sinal com distribuição normal');


t = 0:0.01:4*pi;
y = sin(t);

figure;
plot(t,y);

figure;
ruido = randn(1,length(t));
ruido = ruido/max(ruido);
y = y + ruido;
plot(t,y);

