% Función que modela la ecuación que rige la cantidad de neutrones 
% en un reactor nuclear, a través de una tabla de valores en el tiempo
function res = tp2EcuacionRomberg(t)
    
    format longG
    
    directorio = 'CSV/';
    archivo = 'tp2MetodoRK4ValoresPaso05.csv';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeN = dlmread(strcat(directorio, archivo),',');
    
    posT = find(datosDeN(:,1)== t);
    
    res = datosDeN (posT,2);
end
