% Función que a partir de una matriz, consigue los valores
% intermedios con un determinado paso.
%
% PRE-CONDICIONES
% 'matriz': Matriz que contiene los valores originales de K;
% 'paso': Valor representativo del intervalo de tiempo en el cual se
% quieren obtener los datos
%
% POST-CONDICIONES
% Se devuelve una matriz en la cual, en la primer columna se almacenan
% los valores de tiempo pedidos segun el parametro paso y en la 
% segunda columna los valores correspondientes a cada uno de estos 
% de acuerdo a la seleccion de datos.

function matrizResultante = seleccionarDatos(matriz, paso)

    % Declaración de variables y matrices auxiliares
    % La variable intervalo define la separacion necesaria entre los datos
    % de la matriz segun el paso utilizado
    intervalo = paso/ 0.03125;
    matrizResultante = zeros(size(matriz)); 
    tamanoMatriz = size(matriz);
    
    % Agregamos el primer valor a la matriz resultante
    matrizResultante(1,:) = matriz(1,:);    
    
    % Agregamos los valores siguientes segun el intervalo usado
    n = 1 + intervalo;
    i = 1;  
    
    while n < tamanoMatriz(1,1),
        i = i+1;
        matrizResultante(i,:) = matriz(n,:);
        n = n + intervalo;
    end  
    
    % Cortamos las filas de la matriz que no fueron utilizadas
    matrizResultante((i+1) : tamanoMatriz(1,1) , :) = [];