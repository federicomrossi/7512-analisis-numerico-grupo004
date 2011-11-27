function tp2MetodoRK4()
    
    format longG
    
    % Especificaciones
    funcion = @tp2Ecuacion;
    a = 0;
    b = 120;
    U0= 10^10;
    h = [4,2,1];

    % Procesamos utilizando el método de RK4
    disp(' ');
    disp('Iniciando aplicación del Método de Runge-Kutta 4.')
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,1)), '...'));
    rk1 = metodoRK4(funcion, a , b , U0 , h(1,1));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,2)), '...'));
    rk2 = metodoRK4(funcion, a , b , U0 , h(1,2));
    
    
    
    % Generamos los archivos con formato CSV donde se albergan los
    % valores obtenidos para cada paso
    disp('Generando archivos CSV de datos...');
    dlmwrite('tp2MetodoRK4ValoresPaso4.csv', e1,'precision',16);
    dlmwrite('tp2MetodoRK4ValoresPaso2.csv', e2,'precision',16);
   
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    
end