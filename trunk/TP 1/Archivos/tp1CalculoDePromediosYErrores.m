% Función que dado un vector con los nombres de archivo de matrices
% calcula el promedio y el error de cada una y devuelve un vector con los 
% mismos.
% PRE: matrices es el vector con los nombre de archivo de las matrices;
% directorio es el directorio en donde se encuentran los archivos;
% extensión es la extensión de los archivos que contienen las matrices.
% POST: se devuelven dos matrices de 1 fila, alojandose en la primera 
% los promedios y en la segunda los correspondientes errores. 
function [promediosDeMatrices , erroresDeMatrices] = tp1CalculoDePromediosYErrores(matrices, directorio, extension)

    % Vemos la cantidad de matrices a analizar
    matricesDimension = size(matrices);
    cantMatrices = matricesDimension(1,2);

    % Creamos una matriz de promedios finales y otra de errores
    promediosDeMatrices = zeros(1, cantMatrices);
    erroresDeMatrices = zeros(1, cantMatrices);   
    % Calculamos los promedios de los elementos de cada matriz.
    for i = 1:cantMatrices
        
        matriz = load(strcat(directorio, int2str(matrices(1,i)), extension));
        promediosDeMatrices(1,i) = mean(mean(matriz));
        erroresDeMatrices (1,i) = tp1CalculoDeError(matriz,promediosDeMatrices(1,i));
    end

end