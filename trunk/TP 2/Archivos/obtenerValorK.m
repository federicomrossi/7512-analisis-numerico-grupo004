
function matrizResultado = obtenerValorK(t)
    
    % Configuración
    % Utilizamos un formato que acepte mas cifras significativas
    format longG;
    directorio = 'mediciones/';
    archivo = 'k.txt';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeK = load(strcat(directorio, archivo));
    
    % Buscamos el valor de K para el tiempo t dado
    i = datosDeK == t;
    matrizResultado = [t datosDeK(i,2)];
   
end

