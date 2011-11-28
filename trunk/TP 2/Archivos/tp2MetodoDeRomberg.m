% Funci�n que utiliza el M�todo de Integraci�n de Romberg y lo aplica a 
%la funci�n propuesta en el TP2.
% 

function tp2MetodoDeRomberg()
    
    format longG
   
    % Especificaciones
    funcion = @tp2EcuacionRomberg;
    a = 0;
    b = 72;
    K = 5;
    
    r1 = metodoDeRomberg(funcion,a,b,K)
    
end
