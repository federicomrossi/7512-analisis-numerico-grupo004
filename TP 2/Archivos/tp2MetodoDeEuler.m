% Funci�n que utiliza el M�todo de Euler y lo aplica a la funci�n propuesta 
% en el TP2.
% 
% POST-CONDICIONES
% Se generan cuatro archivos con formato CSV, almacenandose en cada uno los 
% valores obtenidos al aplicar el m�todo para distintos pasos h. Estos
% archivos se guardan en la carpeta 'CSV' que se debe encontrar en el mismo
% directorio ra�z que este archivo.
function tp2MetodoDeEuler()
    
    format longG
   
    % Especificaciones
    funcion = @tp2Ecuacion;
    a = 0;
    b = 120;
    U0= 10^10;
    h = [4, 2, 1, 0.5];

    % Procesamos utilizando el m�todo de Euler
    disp(' ');
    disp('Iniciando aplicaci�n del M�todo de Euler.')
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,1)), '...'));
    e1 = metodoDeEuler(funcion, a , b , U0 , h(1,1));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,2)), '...'));
    e2 = metodoDeEuler(funcion, a , b , U0 , h(1,2));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,3)), '...'));
    e3 = metodoDeEuler(funcion, a , b , U0 , h(1,3));
    
    disp(strcat('Procesando para el paso h=', num2str(h(1,4)), '...'));
    e4 = metodoDeEuler(funcion, a , b , U0 , h(1,4));
    
    % Generamos los archivos con formato CSV donde se albergan los
    % valores obtenidos para cada paso
    disp('Generando archivos CSV de datos...');
    dlmwrite('CSV/tp2MetodoDeEulerValoresPaso4.csv', e1,'precision',16);
    dlmwrite('CSV/tp2MetodoDeEulerValoresPaso2.csv', e2,'precision',16);
    dlmwrite('CSV/tp2MetodoDeEulerValoresPaso1.csv', e3,'precision',16);
    dlmwrite('CSV/tp2MetodoDeEulerValoresPaso05.csv', e4,'precision',16);
    disp('El proceso ha finalizado exitosamente.');
    disp(' ');
    
end

