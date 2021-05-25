clear all; close all; clc;

Fs = 8000; %frequ�ncia de amostragem
L = 8000; %amostras
t = 0:1/Fs:(L-1)/Fs; %dom�nio do tempo
freq = [-(L/2-1):L/2]*Fs/L; %dom�nio da frequ�ncia
pfreq = [0:L/2]*Fs/L; %para frequ�ncia de amostragem par


%x = 0.7*sin(2*pi*500*t)+sin(2*pi*2000*t)+2*randn(1,L);
x = 0.7*sin(2*pi*500*t)+sin(2*pi*2000*t);
X = fft(x); %transformada r�pida

xnew = real(ifft(X)); %trasnf inversa r�pida

figure;
subplot(3,1,1), plot(freq,abs(X))
title('Amplitude x Frequ�ncia sem fftshift')
subplot(3,1,2), plot(freq,abs(fftshift(X)))
title('Amplitude x Frequ�ncia com fftshift')
subplot(3,1,3), plot(pfreq,abs(X(1:L/2+1)))
title('Amplitude x Frequ�ncia(positivas)')

figure;
subplot(4,1,1), plot(t,x)
title('Sinal x(t)')
subplot(4,1,2), plot(pfreq,abs(X(1:L/2+1)))
title('Amplitude x Frequ�ncia')
subplot(4,1,3), plot(pfreq,angle(X(1:L/2+1)))
title('Fase x Frequ�ncia')
subplot(4,1,4), plot(t,xnew)
title('Sinal ifft(fft(x(t)))')

%verificando que as duas maiores frequ�ncias s�o 500 e 2000
hh = X(1:L/2+1);
max1 = max(hh);
m1 = find(hh==max1);

hh(m1)=0;
max2 = max(hh);
m2 = find(hh==max2);



%%
%filtro passa-baixas
a = 500; %frequ�ncia de corte
H = a./(a+j*freq);
Hshift = fftshift(H);
Y = X.* Hshift;
y = real(ifft(Y));

figure;
subplot(4,1,1), plot(t,x);
title('Sinal x(t)')
subplot(4,1,2), plot(freq,abs(H))
title('Filtro passa-baixas')
subplot(4,1,3), plot(freq,abs(fftshift(Y)))
title('Sinal filtrado')
subplot(4,1,4), plot(t,y);

%%
%filtro passa-altas
a = 1000; %frequ�ncia de corte
H = 1-a./(a+j*freq);
Hshift = fftshift(H);
Y = X.* Hshift;
y = real(ifft(Y));

figure;
subplot(4,1,1), plot(t,x);
title('Sinal x(t)')
subplot(4,1,2), plot(freq,abs(H))
title('Filtro passa-altas')
subplot(4,1,3), plot(freq,abs(fftshift(Y)))
title('Sinal filtrado')
subplot(4,1,4), plot(t,y);

%%
%Aplica��os dos filtros

[castanet,Fcastanet] = wavread('castanets44m.wav');
tam1 = length(castanet);

t1 = 0:1/Fcastanet:(tam1-1)/Fcastanet;
freq1 = [-(tam1/2-1):tam1/2]*Fcastanet/tam1; %dom�nio da frequ�ncia
pfreq1 = [0:tam1/2]*Fcastanet/tam1; %para frequ�ncia de amostragem par
Castanet = fft(castanet);

figure;
subplot(4,1,1), plot(t1,castanet);
title('Sinal x(t)')
subplot(4,1,2), plot(pfreq1,abs(Castanet(1:tam1/2+1)))
title('Amplitude x Frequ�ncia')
subplot(4,1,3), plot(pfreq1,angle(Castanet(1:tam1/2+1)))
title('Fase x Frequ�ncia')

%passa baixas
a = 500; %frequ�ncia de corte
H = a./(a+j*freq1);
Hshift = fftshift(H);
Yb = Castanet.* Hshift';
yb = real(ifft(Yb));

%passa altas
a = 500; %frequ�ncia de corte
H = 1-a./(a+j*freq1);
Hshift = fftshift(H);
Ya = Castanet.* Hshift';
ya = real(ifft(Ya));

%Filtragens na frequ�ncia
figure;
subplot(3,1,1), plot(freq1,abs(fftshift(Castanet)))
axis([0 11000 0 2000]);
title('Sinal (w)')
subplot(3,1,2), plot(freq1,abs(fftshift(Ya)))
axis([0 11000 0 2000]);
title('Sinal filtrado passa altas (w)')
subplot(3,1,3), plot(freq1,abs(fftshift(Yb)))
axis([0 11000 0 2000]);
title('Sinal filtrado passa baixas (w)')

%Compara��o das filtragens no tempo e na frequ�ncia
subplot(4,1,3), plot(freq1,abs(fftshift(Yb)));
title('Sinal filtrado passa baixas (w)')
subplot(4,1,4), plot(t1,yb);
title('Sinal filtrado passa baixas (t)')

figure;
subplot(4,1,1), plot(freq1,abs(fftshift(Ya)))
title('Sinal filtrado passa altas (w)')
subplot(4,1,2), plot(t1,ya)
title('Sinal filtrado passa altas (t)')
subplot(4,1,3), plot(freq1,abs(fftshift(Yb)));
title('Sinal filtrado passa baixas (w)')
subplot(4,1,4), plot(t1,yb);
title('Sinal filtrado passa baixas (t)')

%%
%4.2 elimina��o de instrumentos musicais

[bass,Fbass] = wavread('bassdrum.wav');
[hatclosed,Fbass] = wavread('hatclosed.wav');
[mixed,Fbass] = wavread('mixed.wav');
load shake;

sound(mixed,Fbass);
sound(bass,Fbass);
sound(hatclosed,Fbass);
%Plotagem dos 3 sons: mixed, bass e hatclosed
t1 = 0:1/Fbass:(length(mixed)-1)/Fbass;
t2 = 0:1/Fbass:(length(bass)-1)/Fbass;
Tammixed=length(mixed);
Tambass=length(bass);
freq1 = [-(Tammixed/2-1):(Tammixed/2)]*Fbass/24000;
freq2 = [-(Tambass/2-1):(Tambass/2)]*Fbass/4000;

figure;
subplot(3,1,1), plot(t1,mixed)
title('Som com todos os instrumentos')
subplot(3,1,2), plot(t2,bass)
title('Som do bumbo')
subplot(3,1,3), plot(t2,hatclosed)
title('Som dos pratos')

Xmixed = fft(mixed);
Xbass = fft(bass);
Xhatclosed = fft(hatclosed);

%Plotagem dos sinais na frequ�ncia
figure;
subplot(3,1,1), plot(freq1,abs(fftshift(Xmixed)))
axis([-4000 4000 0 400]);
title('Sinal no dom�nio da frequ�ncia de todos os instrumentos')
subplot(3,1,2), plot(freq2,abs(fftshift(Xbass)))
axis([-4000 4000 0 400]);
title('Sinal no dom�nio da frequ�ncia do bumbo')
subplot(3,1,3), plot(freq2,abs(fftshift(Xhatclosed)))
axis([-4000 4000 0 30]);
title('Sinal no dom�nio da frequ�ncia dos pratos')

%Filtragem usando passa-altas
a = 1000;
H = 1 - a./(a+j*freq1);
%H = freq1>=1000;
Hshift = fftshift(H);
Y = Xmixed.* Hshift';
figure;
subplot(2,1,1) ,plot(freq1,abs(fftshift(Y)))
axis([-4000 4000 0 400]);
title('Sinal no dom�nio da frequ�ncia do som sem a bateria')

yfiltrado = real(ifft(Y));
subplot(2,1,2) ,plot (t1,yfiltrado)
axis([0 t1(end) -0.6 0.7]);
title('Sinal no dom�nio do tempo do som sem a bateria')

semtrompete = mixed - shake;
figure;
plot(t1,semtrompete)
sound(semtrompete,Fbass);