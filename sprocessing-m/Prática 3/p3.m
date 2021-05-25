clear all; close all; clc;

%%
%fen�meno Gibbs

%2
kmax=10;
k = -kmax:kmax;

figure;
stem(k,abs(ak(k)));%m�dulo
figure;
stem(k,angle(ak(k)));%fase

%3
passo = 0.01;
a=-5;
b=5;

figure;
subplot(3,1,1);
[x,t] = serieF1(5,a,passo,b);
plot(t,x);
title('K=5');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(15,a,passo,b);
plot(t,x);
title('K=15');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(30,a,passo,b);
plot(t,x);
title('K=30');
xlabel('t');
ylabel('x(t)');

figure;
[x,t] = serieF1(500,a,passo,b);
plot(t,x);
title('K=500');
xlabel('t');
ylabel('x(t)');

%%
%Minimiza��o do efeito Gibbs

figure;

subplot(3,1,1);
[x,t] = serieF1(2,a,passo,b);
plot(t,x);
title('K=2  Sem janelamento');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(2,a,passo,b,'fejer');
plot(t,x);
title('K=2  Janelamento Fej�r');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(2,a,passo,b,'sigma');
plot(t,x);
title('K=2   Janelamento com aproxima��o sigma');
xlabel('t');
ylabel('x(t)');


figure;

subplot(3,1,1);
[x,t] = serieF1(5,a,passo,b);
plot(t,x);
title('K=5  Sem janelamento');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(5,a,passo,b,'fejer');
plot(t,x);
title('K=5  Janelamento Fej�r');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(5,a,passo,b,'sigma');
plot(t,x);
title('K=5   Janelamento com aproxima��o sigma');
xlabel('t');
ylabel('x(t)');

figure;

subplot(3,1,1);
[x,t] = serieF1(10,a,passo,b);
plot(t,x);
title('K=10  Sem janelamento');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(10,a,passo,b,'fejer');
plot(t,x);
title('K=10  Janelamento Fej�r');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(10,a,passo,b,'sigma');
plot(t,x);
title('K=10   Janelamento com aproxima��o sigma');
xlabel('t');
ylabel('x(t)');


figure;

[x,t] = serieF1(10,a,passo,b);
plot(t,x,'r');

xlabel('t');
ylabel('x(t)');
hold on

[x,t] = serieF1(10,a,passo,b,'fejer');
plot(t,x,'g');

xlabel('t');
ylabel('x(t)');
hold on

[x,t] = serieF1(10,a,passo,b,'sigma');
plot(t,x);
title('K=10  Aplica��o de janelamento');
xlabel('t');
ylabel('x(t)');




figure;
subplot(3,1,1);
[x,t] = serieF1(50,a,passo,b);
plot(t,x);
title('K=50  Sem janelamento');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(50,a,passo,b,'fejer');
plot(t,x);
title('K=50  Janelamento Fej�r');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(50,a,passo,b,'sigma');
plot(t,x);
title('K=50   Janelamento com aproxima��o sigma');
xlabel('t');
ylabel('x(t)');


figure;
subplot(3,1,1);
[x,t] = serieF1(100,a,passo,b);
plot(t,x);
title('K=100  Sem janelamento');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
[x,t] = serieF1(100,a,passo,b,'fejer');
plot(t,x);
title('K=100  Janelamento Fej�r');
xlabel('t');
ylabel('x(t)');

subplot(3,1,3);
[x,t] = serieF1(100,a,passo,b,'sigma');
plot(t,x);
title('K=100   Janelamento com aproxima��o sigma');
xlabel('t');
ylabel('x(t)');


figure;

[x,t] = serieF1(100,a,passo,b);
plot(t,x,'r');

xlabel('t');
ylabel('x(t)');
hold on

[x,t] = serieF1(100,a,passo,b,'fejer');
plot(t,x,'g');

xlabel('t');
ylabel('x(t)');
hold on

[x,t] = serieF1(100,a,passo,b,'sigma');
plot(t,x);
title('K=100  Aplica��o de janelamento');
xlabel('t');
ylabel('x(t)');