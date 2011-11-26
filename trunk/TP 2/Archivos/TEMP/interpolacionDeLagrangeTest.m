% Función que realiza una prueba unitaria para la comprobación del óptimo
% funcionamiento de la funcion 'interpolacionDeLagrange'
% POST: se muestra por consola el resultado del test.
function interpolacionDeLagrangeTest()

    % Valores a interpolar
    X = [0 1 2 3];
    Y = [-1 0 3 10];
    polinomioDeLagrange = '-1+x+x*(x-1)+x*(1/3)*(x-1)*(x-2)';
    
    % Valores que se desean evaluar
    xi = [0 1 2 3 0.3 0.5 1.6 2.3 3.5];
    
    % Interpolamos y obtenemos vector de resultados
    yi = interpolacionDeLagrange(X, Y, xi);
    
    % Evaluamos si se obtuvieron los resultados esperados
    p = inline(polinomioDeLagrange);
    
    disp(' ');
    disp('Testeando la función "interpolacionDeLagrange":');
    disp(' ');
        
    for i = 1:9
        disp(strcat('Prueba para xi = ', num2str(yi(i,1)), '; yi = ', num2str(p(yi(i,1))), ': ', evaluarPrueba(p(xi(1,i)), yi(i,2))));      
    end
    
    
    
    
    