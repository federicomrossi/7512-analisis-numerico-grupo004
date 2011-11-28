% Función que implementa la busqueda binaria para la busqueda de un valor
% pasado por parámetro.
%
%       busquedaBinaria(vector,valor,max,min)
%
% PRE-CONDICIONES
% vector: es un vector fila que debe estar ordenado.
% valor: es el valor que se desea buscar en el vector;
%
% POST-CONDICIONES
% Se devuelve el indice del vector en el cual se encuentra el valor o -1 si
% no se encontró.
function indice = busquedaBinaria(vector, valor)

    izq = 0;
    lenVector = size(vector);
    der = lenVector(1,2);
    
    indice = -1;
    
    while (izq <= der)
       
        medio = ceil((izq + der)/2);
        
        if(vector(medio) == valor)
            indice = medio;
            break;
        
        elseif(vector(medio) > valor)
            der = medio - 1;
        
        else
            izq = medio + 1;
        
        end
    end
    
end