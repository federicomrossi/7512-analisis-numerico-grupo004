% Función que utiliza el Método Runge-Kutta 4 y lo aplica a la función 
% propuesta en el TP2.
% 
% POST-CONDICIONES
% Se generan cuatro archivos con formato CSV, almacenandose en cada uno los 
% valores obtenidos al aplicar el método para distintos pasos h. Estos
% archivos se guardan en la carpeta 'CSV' que se debe encontrar en el mismo
% directorio raíz que este archivo.
function tp2MetodoRK4()
    
    format longG
    
    % Especificaciones
    funcion = @tp2Ecuacion;
    a = 0;
    b = 120;
    U0= 10^10;
    h = [4, 2, 1, 0.5];

    % Procesamos utilizando el método de RK4
    disp(' ');
    disp('Iniciando aplicación del Método de Runge-Kutta 4.')
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,1)), '...'));
    rk1 = metodoRK4(funcion, a , b , U0 , h(1,1));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,2)), '...'));
    rk2 = metodoRK4(funcion, a , b , U0 , h(1,2));
   
    disp(strcat('Procesando para el paso h=', num2str(h(1,3)), '...'));
    rk3 = metodoRK4(funcion, a , b , U0 , h(1,3));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,4)), '...'));
    rk4 = metodoRK4(funcion, a , b , U0 , h(1,4));
    
    % Generamos los archivos con formato CSV donde se albergan los
    % valores obtenidos para cada paso
    disp('Generando archivos CSV de datos...');
    dlmwrite('CSV/tp2MetodoRK4ValoresPaso4.csv', rk1,'precision',16);
    dlmwrite('CSV/tp2MetodoRK4ValoresPaso2.csv', rk2,'precision',16);
    dlmwrite('CSV/tp2MetodoRK4ValoresPaso1.csv', rk3,'precision',16);
    dlmwrite('CSV/tp2MetodoRK4ValoresPaso05.csv', rk4,'precision',16);
    
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    
end