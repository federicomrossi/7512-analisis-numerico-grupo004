% Función que utiliza el algoritmo de interpoladores de Lagrange
% para interpolar entre puntos dados y conseguir el valor de valores
% intermedios.
%
% PRE-CONDICIONES
% 'X': vector fila que contiene los valores de la abcisa;
% 'Y': vector fila que contiene los valores de las ordenadas;
% 'xi': vector fila que contiene los puntos sobre los que se desea evaluar
% y conseguir los resultado.
%
% POST-CONDICIONES
% Se devuelve una matriz en la cual, en la primer columna se almacenan
% los valores del vector xi pasado por parametro y en la segunda columna
% los valores correspondientes a cada uno de estos de acuerdo a la
% interpolación.
function matrizResultante = interpolacionDeLagrange(X, Y, xi)

    % Declaración de variables y matrices auxiliares
    n = size(X,2);
    L = ones(n, size(xi, 2));

    % Procesamos
    for i = 1:n
        for j = 1:n

            if (i ~= j)
                L(i,:) = L(i,:).*(xi - X(j)) / (X(i) - X(j));
            end
            
        end
    end
    
    yi = 0;
    
    % Armamos el vector de resultados yi
    for i = 1:n
        yi = yi + Y(i)*L(i,:);
    end
    
    % Generamos la matriz a retornar
    matrizResultante = [xi' yi'];
