% Función que calcula el error de una matriz.
% PRE: se debe pasar por parametro una matriz.
% POST: se devuelve un escalar representativo del error.
function [error] = tp1CalculoDeError(matriz,promedio)

    %Con los datos de entrada se calcula el error (desviacion
    % media estandard)
    
    sumatoria = 0;
    
    %Mediante dos ciclos for anidados, recorro la totalidad de la matriz
    % realizando la sumatria de los cuadrados de la diferencia entre el 
    % valor (i,j) de la matriz y el promedio de la misma.
    for i = 1: size(matriz,1)
        for j = 1: size(matriz,1)
            sumatoria = sumatoria + ( (matriz(i,j) - promedio) ^2 );            
        end
    end    
    
    % Se calcula el desvio medio como la raíz de la sumatoria sobre la
    % cantidad total de elementos
    desvio = sqrt( ( 1/ ((size(matriz,1)^2)) )* sumatoria );
    
    
    % El error considerado en este caso, es igual a 3 desviaciones
    error = desvio * 3;

end

