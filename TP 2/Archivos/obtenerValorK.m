
function matrizResultado = obtenerValorK(t)
    
    % Configuración
    % Utilizamos un formato que acepte mas cifras significativas
    format longG;
    directorio = 'mediciones/';
    archivo = 'k.txt';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeK = load(strcat(directorio, archivo));
    
    % Buscamos el valor de K para el tiempo t dado
    lenDatosDeK = size(datosDeK);
    posT = 0;
    
    for i = 1:(lenDatosDeK(1,1)+1)
        if(isequal(datosDeK(i,1),t))
            posT = i;
            break;        
        end
    end

    if(posT == 0) 
        MException('Función obtenerValorK: El valor t del intervalo no se encuentra en la tabla');
    end
    
    matrizResultado = [t datosDeK(posT,2)];
   
end

