
function matrizResultado = obtenerValorK(tiempos)
    
    % Configuración
    % Utilizamos un formato que acepte mas cifras significativas
    format longG;
    directorio = 'mediciones/';
    archivo = 'k.txt';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeK = load(strcat(directorio, archivo));
    
    % Interpolamos los puntos obtenemos los valores correspondientes a los
    % tiempos solicitados
    matrizResultado = interpolacionDeLagrange(datosDeK(:,1), datosDeK(:,2), tiempos);
    
end

