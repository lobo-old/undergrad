clear all; close all; clc;

x = imread('spokes','tif'); %leitura da imagem
fps = 24;    %definindo a frequência dos frames
t_final = 3;  %tempo do vídeo
graus = 0;    %variável auxiliar para a rotação da imagem

gpf = 36;   %ângulo de rotação por frame
for i=1:fps*t_final,    %
c = imrotate(x,-graus,'bilinear','crop'); %função de rotação que recebe a imagem, ângulo de rotação, 
imshow(c);                                %e parâmetros adicionais para definir o tipo de interpolação utilizada(bilinear) e
title(sprintf('FPS, angulo => %d,%d.',fps,gpf)); % para que a imagem rotacionada tenha o mesmo tamanho da original(crop)
pause(1/fps)          %função para parar de acordo com a frequência definida, ela define o tempo entre a apresentação de cada frame
graus = graus + gpf;   
end