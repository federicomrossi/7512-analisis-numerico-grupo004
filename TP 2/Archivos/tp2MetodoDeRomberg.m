% Función que utiliza el Método de Integración de Romberg y lo aplica a 
%la función propuesta en el TP2.
% 
% POST-CONDICIONES
% Se muestra por consola el resultado de la integración.
function tp2MetodoDeRomberg()
    
    format longG
   
    % Especificaciones
    funcion = @tp2EcuacionRomberg;
    a = 0;
    b = 72;
    K = 5;
    
    % Procesamos
    disp(' ');
    disp('Iniciando aplicación del Método de Romberg.')
    
    r = metodoDeRomberg(funcion, a, b, K);
    
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    disp(['El resultado de la integración es ' num2str(r)]);
    
end