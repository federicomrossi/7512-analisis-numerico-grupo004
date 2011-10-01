% Función que calcula los promedios de las matrices del TP1 (Item A).
% POST: se crean dos archivos con formato CSV: uno que contiene los
% promedios (promediosMatrices.csv) y otro que alberga al error de cada
% matriz (erroresMatrices.csv). Ambos archivos se crean en el directorio
% raiz del workspace actual del MATLAB.
function [] = tp1ItemA()

    % Configuración
    directorio = 'Matrices/';
    extension = '.txt';
    matrices = [917 977 1038 1100 1162 1225 1289 1353];
    dimensionMatrices = size(matrices);
    cantidadMatrices = dimensionMatrices(1,2);
    
    % Calculamos los promedios y los errores
    [promediosDeMatrices , erroresDeMatrices] = tp1CalculoDePromediosYErrores(matrices, directorio, extension);
    
    % Generamos los archivos con formato CSV donde se albergan
    % los promedios calculados y los errores.
    csvwrite('promediosMatrices.csv', promediosDeMatrices(1,1:cantidadMatrices));
    csvwrite('erroresMatrices.csv', erroresDeMatrices(1,1:cantidadMatrices));
        
end