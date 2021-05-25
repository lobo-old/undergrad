clear all; close all; clc;

fs = 256;
t = 0:1/fs:10;
s1 = sin(2*pi*20*t);
s2 = sin(2*pi*80*t);
n = 0.1*randn(size(t));
sn = s1 + s2 + n;
plot(t,sn)
axis([0 0.4 -1.1 1.1]);


%fun��o que retorna a ordem m�nima do filtro(N) necess�ria para atenuar
%ripples na banda de passagem(terceiro par�metro) e que tenha a atenua��o 
%na banda de rejei��o de acordo com par�metro quatro
%Retorna tamb�m a(s) frequ�ncia(s) de corte do filtro
[N, Wn] = buttord(40/(fs/2), 60/(fs/2), 1, 35) 
                                                
%Filtro butterworth com os par�metros obtidos anteriormente, ordem e
%frequ�ncia de corte. B s�o os coeficientes do numerador e A s�o os
%coeficientes do denominador
[B,A] = butter(N,Wn,'low')                      

freqz(B,A,1024,fs)  %resposta em frequ�ncia do filtro

y = filter(B,A,sn); %filtragem da sen�ide polu�da com o filtro constru�do
figure;plot(t,y);axis([0 0.4 -1.1 1.1]);
%soundsc(y,fs)
soundsc(y)

y = filtfilt(B,A,sn); %filtragem em fase zero da sen�ide polu�da 
figure;plot(t,y);axis([0 0.4 -1.1 1.1]);
%soundsc(y,fs)
soundsc(y)


B = fir1(20,40/(fs/2)); %filtro FIR de ordem 20 e f. de corte 40 Hz
freqz(B,1,1024,fs); %resposta em frequ�ncia do filtro
y = filter(B,1,sn); %filtragem da sen�ida com o filtro FIR
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
freq = [-(L/2-1):L/2]*Fs/L; %dom�nio da frequ�ncia
pfreq = [0:L/2]*Fs/L; %para frequ�ncia de amostragem par


Aa = fftshift(abs(fft(A)));
figure; plot(pfreq,Aa(1:L/2 +1));
Bb = fftshift(abs(fft(B)));
figure; plot(pfreq,Bb(1:L/2 +1));


[Cxy,F]=mscohere(A,B,boxcar(2048),0,2048,Fs);
figure;plot(F,Cxy);
