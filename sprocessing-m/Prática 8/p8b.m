clear all; close all; clc;

x = imread('spokes','tif'); %leitura da imagem
fps = 24;    %definindo a frequ�ncia dos frames
t_final = 3;  %tempo do v�deo
graus = 0;    %vari�vel auxiliar para a rota��o da imagem

gpf = 36;   %�ngulo de rota��o por frame
for i=1:fps*t_final,    %
c = imrotate(x,-graus,'bilinear','crop'); %fun��o de rota��o que recebe a imagem, �ngulo de rota��o, 
imshow(c);                                %e par�metros adicionais para definir o tipo de interpola��o utilizada(bilinear) e
title(sprintf('FPS, angulo => %d,%d.',fps,gpf)); % para que a imagem rotacionada tenha o mesmo tamanho da original(crop)
pause(1/fps)          %fun��o para parar de acordo com a frequ�ncia definida, ela define o tempo entre a apresenta��o de cada frame
graus = graus + gpf;   
end