% Función que evalua si dos datos son iguales o no. En caso de cumplirse lo
% primero, devuelve la cadena de caracteres 'OK', mientras que en caso
% contrario devuelve la cadena de caracteres 'ERROR'
function res = evaluarPrueba(datoX, datoY)

    if(num2str(datoX) == num2str(datoY)) 
        res = 'OK';
    else
        res = 'ERROR';
    end
