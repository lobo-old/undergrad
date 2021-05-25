function fct=ak(k,T1,T)

%Esta fun��o produz os coeficientes da s�rie de Fourier de uma onda
%quadrada para ser usada na aula pr�tica de ELT 410. Note que a fun��o tem
%um argumento de entrada 'k' e retorna ck, o k-�simo coeficiente desta
%s�rie. A fun��o pode tamb�m retornar um conjunto de coeficientes se a
%entrada k for um vetor. Por exemplo, se k = [0,1,2], a fun��o retornar� os
%coeficientes [c0,c1,c2]
if nargin==1
T1 = pi/2;
T = 2*pi;
end
fct = zeros(size(k));

for m=1:length(k)
    if k(m)==0
        fct(m)=2*T1/T;
    else
        fct(m)=1./(k(m)*pi).*(sin(k(m)*T1));
    end
    
end


return;