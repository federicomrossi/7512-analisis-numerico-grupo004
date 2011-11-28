% Función que modela la ecuación que rige la cantidad de neutrones 
% en un reactor nuclear, a través de una tabla de valores en el tiempo
%
%		tp2EcuacionRomberg(t)
%
% PRE-CONDICIONES
% t: tiempo en el cual se desea saber la cantidad de neutrones.
%
% POST-CONDICIONES
% Devuelve el numero que representa la cantidad de neutrones en el tiempo t.
function res = tp2EcuacionRomberg(t)
    
    format longG
    
    directorio = 'CSV/';
    archivo = 'tp2MetodoRK4ValoresPaso05.csv';
    
    % Abrimos el archivo y generamos una matriz con los datos extraidos
    datosDeN = dlmread(strcat(directorio, archivo),',');
    
    posT = datosDeN(:,1)== t;
    
    res = datosDeN(posT,2);
    
end
