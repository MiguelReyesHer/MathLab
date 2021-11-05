%{ 
Este programa de Matlab permite hallar la inversa de una matriz 
con su determinante y su adjuta, de acuerdo con la propiedad: 
(1/det(A))*(adj(A))=A^-1
Creado el 31 de octubre del 2021
Autor MARH
%}

%Definimos nuestras matrices
A=[2 1 0 0; 0 -1 3 0; 1 0 0 -2; 3 0 -1 0];
B=[0 1 0 0; 0 0 1 0; 0 0 0 1; -2 -3 -1 0]; 

%Calculamos los determinantes de las matrices
DetA=det(A);
DetB=det(B);

%{
Calculamos las matrices adjuntas
Se necesitará instalar Symbolic Math Toolbox para que reconozca la función
adjoint, que permite obtener inmediatamente la matriz adjunta
%}
AdjA=adjoint(A);
AdjB=adjoint(B);

%Calculamos la inversa de acuerdo con: A^-1 = (1/det(A))(adj(A))
InvA=(1/DetA)*(AdjA) %Respuesta ejercicio 16
InvB=(1/DetB)*(AdjB) %Respuesta ejercicio 18