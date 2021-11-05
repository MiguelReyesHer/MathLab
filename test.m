%{
"Plantilla" operaciones de matrices con MatLab
Autor MARH
05.11.2021

FUNCIONES:

AdjA=adjoint(A) %Adjunta
InvA=inv(A) %Inversa
DetA=det(A) %Determinante
TA=A' %Transpuesta

%Nuevas matrices para A(Necesitamos matrices A y bA - SARRUS))
A1=A;
A1(:,1)=bA; %Se selecciona la columna a reemplazar por el vector bA
%}


%Definimos nuestras matrices
A=[1 -3 0 -2;3 -12 -2 -6; -2 10 2 5;-1 6 1 3];

%Operaciones
TA=A.'; %Transpuesta
InvA=inv(A); %Inversa

%Resultado
R=(2*TA)+InvA