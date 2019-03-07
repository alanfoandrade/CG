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


% ================================================================
% LETRA (A)
% Matriz de transformacao
M = X/U                         % X = M * U
% M = X*inv(U)     

% ================================================================
% LETRA (B)
AreaX = det(X)/2                % area triangulo X = area paralelogramo U (det(X))/2
% AreaX = norm(cross(u1,v1))/2  % det(X) = norm(cross(u1,v1))
NvectX = cross(u1,v1);          % vetor normal entre u1 e v1
NvectX = NvectX/norm(NvectX)    % normalização do vetor resultante

% ================================================================
% LETRA (C)
AreaU = det(U)/2                % area triangulo U = area paralelogramo U (det(U)) /2
% AreaU = norm(cross(u0,v0))/2  % det(U) = norm(cross(u0,v0))
RelacaoXU = det(M)              % relacao entre a area de X e U
% RelacaoXU = det(X)/det(U)     % det(M) = det(X)/det(U)
AreaX = RelacaoXU*AreaU

% ================================================================
% LETRA (D)
% Voltar do estado X para estado U
U = M\X                         % X = M * U
% U = inv(M)*X