function tp2MetodoDeEuler()

    % Especificaciones
    funcion = @tp2Ecuacion;
    a = 0;
    b = 120;
    U0= 10^10;
    %h = [4,2,1,0.5];
    h = [4,2];
    
    % variables auxiliares
    dimh = size(h);
    cantPasos = dimh(1,2);
    
    % Procesamos utilizando el método de Euler
    disp(' ');
    disp('Iniciando aplicación del Método de Euler.')
    disp('Procesando...')
    e1 = metodoDeEuler(funcion, a , b , U0 , h(1,1));
    e2 = metodoDeEuler(funcion, a , b , U0 , h(1,2));
    %e3 = metodoDeEuler(funcion, a , b , U0 , h(1,3));
    %e4 = metodoDeEuler(funcion, a , b , U0 , h(1,4));
    
    % Generamos los archivos con formato CSV donde se albergan los
    % valores obtenidos para cada paso
    disp('Generando archivos CSV de datos.');
    csvwrite('tp2ValoresMetodoDeEuler.csv', e1);
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    
end

