% Funci�n que utiliza el M�todo de Integraci�n de Romberg y lo aplica a 
%la funci�n propuesta en el TP2.
% 
% POST-CONDICIONES
% Se muestra por consola el resultado de la integraci�n.
function tp2MetodoDeRomberg()
    
    format longG
   
    % Especificaciones
    funcion = @tp2EcuacionRomberg;
    a = 0;
    b = 72;
    K = 5;
    
    % Procesamos
    disp(' ');
    disp('Iniciando aplicaci�n del M�todo de Romberg.')
    
    r = metodoDeRomberg(funcion, a, b, K);
    
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    disp(['El resultado de la integraci�n es ' num2str(r)]);
    
end