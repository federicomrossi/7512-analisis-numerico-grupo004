% Función que busca el valor de 'k' correspondiente a un tiempo t dado por
% parametro. 
%
%       obtenerValorK(t)
%
% PRE-CONDICIONES
% t: es el tiempo en segundos.
%
% POST-CONDICIONES
% Se devuelve una matriz de dimension 1x2, donde en la primer columna se
% encuentra el valor t al cual corresponde el k(t) buscado, y en la segunda
% columna se almacena este último.
function matrizResultado = obtenerValorK(t)
    
    % Configuración
    format longG;
    directorio = 'mediciones/';
    archivo = 'k.csv';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeK = dlmread(strcat(directorio, archivo),',');
    
    % Buscamos el valor de K para el tiempo t dado
    posT = find(datosDeK(:,1) == t);
    
    matrizResultado = [t datosDeK(posT,2)];
   
end

