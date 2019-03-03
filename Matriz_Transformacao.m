clear
clc

% Triangulo ABC
A = [0,0,1];
B = [3,0,1];
C = [3,1,1];

% Triangulo DEF
D = [3,3,1];
E = [6,7,1];
F = [4,9,1];

% Vetor base triangulo ABC
u0 = B - A
v0 = C - A

% Vetor base triangulo DEF
u1 = E - D
v1 = F - D

% Matriz triangulo ABC
U = transpose([u0;v0;A])

% Matriz triangulo DEF
X = transpose([u1;v1;D])

% Matriz de transformacao
M = X * inv(U)