clear all; close all; clc;

fs = 256;
t = 0:1/fs:10;
s1 = sin(2*pi*20*t);
s2 = sin(2*pi*80*t);
n = 0.1*randn(size(t));
sn = s1 + s2 + n;
plot(t,sn)
axis([0 0.4 -1.1 1.1]);


%função que retorna a ordem mínima do filtro(N) necessária para atenuar
%ripples na banda de passagem(terceiro parâmetro) e que tenha a atenuação 
%na banda de rejeição de acordo com parâmetro quatro
%Retorna também a(s) frequência(s) de corte do filtro
[N, Wn] = buttord(40/(fs/2), 60/(fs/2), 1, 35) 
                                                
%Filtro butterworth com os parâmetros obtidos anteriormente, ordem e
%frequência de corte. B são os coeficientes do numerador e A são os
%coeficientes do denominador
[B,A] = butter(N,Wn,'low')                      

freqz(B,A,1024,fs)  %resposta em frequência do filtro

y = filter(B,A,sn); %filtragem da senóide poluída com o filtro construído
figure;plot(t,y);axis([0 0.4 -1.1 1.1]);
%soundsc(y,fs)
soundsc(y)

y = filtfilt(B,A,sn); %filtragem em fase zero da senóide poluída 
figure;plot(t,y);axis([0 0.4 -1.1 1.1]);
%soundsc(y,fs)
soundsc(y)


B = fir1(20,40/(fs/2)); %filtro FIR de ordem 20 e f. de corte 40 Hz
freqz(B,1,1024,fs); %resposta em frequência do filtro
y = filter(B,1,sn); %filtragem da senóida com o filtro FIR
figure;plot(t,y); axis([0 0.4 -1.1 1.1])
%soundsc(y,fs)
soundsc(y)

fcuts = [40 60];
mags = [1 0];
devs = [0.05 0.01];
[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs,fs);
hh = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
figure;freqz(hh)

%%

[Cxy,F]=mscohere(sn,s1,boxcar(256),0,256,fs);
figure;plot(F,Cxy);
[Cxy,F]=mscohere(sn,y,boxcar(256),0,256,fs);
figure;plot(F,Cxy);


%%
[A,Fs]=wavread('bird.wav');
[B,Fs]=wavread('birdmp3towav.wav');
L = length(A);

t=0:1/Fs:(length(A)-1)/Fs;
freq = [-(L/2-1):L/2]*Fs/L; %domínio da frequência
pfreq = [0:L/2]*Fs/L; %para frequência de amostragem par


Aa = fftshift(abs(fft(A)));
figure; plot(pfreq,Aa(1:L/2 +1));
Bb = fftshift(abs(fft(B)));
figure; plot(pfreq,Bb(1:L/2 +1));


[Cxy,F]=mscohere(A,B,boxcar(2048),0,2048,Fs);
figure;plot(F,Cxy);
