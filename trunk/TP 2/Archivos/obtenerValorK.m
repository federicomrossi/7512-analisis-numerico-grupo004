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
    archivo = 'k.txt';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeK = load(strcat(directorio, archivo));
    
    % Buscamos el valor de K para el tiempo t dado
    lenDatosDeK = size(datosDeK);
    posT = 0;
    
    for i = 1:(lenDatosDeK(1,1))
        if(isequal(datosDeK(i,1),t))
            posT = i;
            break;        
        end
    end
    %[t posT]
    
    if(posT == 0) 
        MException('AcctError:NoValue', ...
                   'El valor t del intervalo no se encuentra en la tabla');
    end
    
    matrizResultado = [t datosDeK(posT,2)];
   
end

