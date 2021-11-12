%{ 
Este programa de Matlab permite encontrar los valores que satisfacen 
a un sistema de ecuaciones usando la regla de Cramer
Creado el 1 de noviembre del 2021
Autor MARH

Transformamos el sistema de ecuaciones en su forma Ax=b
 
 Si tenemos el sistema:
 2x + 3y + 4z = 0
    - y  + 5z = 3

Separamos los coeficientes, las variables y el vector solución en 
diferentes matrices o vectores, según sea el caso, cumpliendo la forma Ax=b

Siguiendo el ejemplo anterior:
Matriz de coeficientes: ([[2,3,4],[0,-1,5]])
Vector solución: ([0,3])

En este programa únicamente utilizaremos las matrices de coeficientes y el 
vector solución para hallar los valores que satisfacen el sistema
%}

%Definimos nuestras matrices
A=[2 3 -1; -1 2 3; 4 -1 1];
B=[1 0 -1 1; 0 2 2 -3; 4 -1 -1 0; -2 1 4 0];

%Definimos los vectores solución "b"
bA=[5;0;-1];
bB=[7;-1;0;2];

%{ 
Obtenemos las nuevas matrices sustituyendo el vector solución en cada
columna de su respectiva matriz 
%}
%Nuevas matrices para A
A1=A;
A1(:,1)=bA; %Se selecciona la columna a reemplazar por el vector bA
A2=A;
A2(:,2)=bA;
A3=A;
A3(:,3)=bA;
%Nuevas matrices para B
B1=B;
B1(:,1)=bB;
B2=B;
B2(:,2)=bB;
B3=B;
B3(:,3)=bB;
B4=B;
B4(:,4)=bB;

%{
Se calculan los valores que satisfacen el sistema de ecuaciones, dividimos
el determinante de cada uno de las nuevas matrices con su original: 
x1 = det(A1)/det(A)
%}
%Resultado problema 22
Ax1=det(A1)/det(A)
Ax2=det(A2)/det(A)
Ax3=det(A3)/det(A)
%Resultado problema 23
Bx1=det(B1)/det(B)
Bx2=det(B2)/det(B)
Bx3=det(B3)/det(B)
Bx4=det(B4)/det(B)