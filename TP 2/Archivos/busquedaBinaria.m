
function indice = busquedaBinaria (vector,valor,max,min)


if (max < min)
    indice = -1;
    return
end

medio = ceil((max + min)/2);

if (vector(medio) < valor)
    busquedaBinaria (vector,valor,max,medio+1)
else if (vector(medio) > valor)
    busquedaBinaria (vector,valor,medio-1,min)
    else indice = medio;
        return
    end
end
