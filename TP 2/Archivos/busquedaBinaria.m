% Función que implementa la busqueda binaria para la busqueda de un valor
% pasado por parámetro.
%
%       busquedaBinaria(vector,valor,max,min)
%
% PRE-CONDICIONES
% vector: es 
% valor: es el valor que se desea buscar en el vector;
% max: 
function indice = busquedaBinaria(vector,valor)

    max = size(vector);
    max = max(1,2)
    min = 1;
    
    indice = privateBusquedaBinaria(vector,valor,max,min);

end

% Función de uso privado para usar la recursividad en la busqueda.
function indice = privateBusquedaBinaria(vector,valor,max,min)

    if (max < min)
        indice = -1;
        return
    end

    medio = ceil((max + min)/2);

    if (vector(medio) < valor)
        busquedaBinaria (vector,valor,max,medio+1)
    else
        if (vector(medio) > valor)
            busquedaBinaria (vector,valor,medio-1,min)
        else indice = medio;
            return
        end
    end
end