clear all; close all; clc;

%%
%Exercício 1
tam=19;
n=0:tam;

x1=@(n) n==0;
a = [1 -0.6 -0.16];
b = [5 0 0];
h = filter(b,a,x1(n));
figure;
stem(n,h);
title('Resposta ao impulso h[n] do sistema');
ylabel('h[n]');
xlabel('[n]');

%u[n]
x2=@(n) n>=1;
y2 = filter(b,a,x2(n));
figure;
stem(n,y2);
title('Resposta à entrada x[n] = u[n]');
ylabel('y[n]');
xlabel('[n]');
%sen[n]/n
x3=@(n) sin(n)./(n+eps);
y3 = filter(b,a,x3(n));
figure;
stem(n,y3);
title('Resposta à entrada x[n] = sen[n]/n');
ylabel('y[n]');
xlabel('[n]');
%%
%Exercício 2
m = conv1d(h,x1(n));
h=[h zeros(1,tam)];
figure;
stem(m)
title('Convolução de h[n] com impulso');
ylabel('h[n]');
xlabel('[n]');

%%
%Exercício 3

I_lua = imread('lua.jpg');%aquisição da imagem
F1 = [-1 -1 -1;-1 8 -1;-1 -1 -1];%filtro de laplace
I_saida = convolucao2D(F1,I_lua);%imagem convoluída

I_realcada = uint8(double(I_lua) + I_saida);%imagem com as bordas realçadas

figure;
imshow(I_lua);
figure;
imshow(I_realcada);

pause;

I_texto = imread('texto.jpg');%aquisição da imagem
F2 = ones(3,3)/9;%filtro média 3x3
I_textoSaida = uint8(convolucao2D(F2,I_texto));%imagem convoluída

figure;
imshow(I_texto);
figure;
imshow(I_textoSaida);

%OBS: não foi utilizada a função 'imresize' pois isto já é feito dentro da
%função convolucao2D
