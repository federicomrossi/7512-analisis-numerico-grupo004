% Funci�n que utiliza el M�todo de Romberg para calcular la integral de
% una funci�n entre un intervalo predeterminado.
%
%       metodoDeRomberg(f, a, b, K)
%
% PRE-CONDICIONES
% 'f': funci�n que se desea procesar, la cual debe pasada como una function 
% handler (ej: @miFuncion). Esta debe tener dos parametros: una variable 
% independiente y una variable dependiente de la primera.
% 'a': extremo izquierdo del intervalo a integrar;
% 'b': extremo derecho del intervalo a integrar;
% 'K': n�mero de paso m�ximo.
%
% POST-CONDICIONES
% Devuelve el resultado de la integraci�n con una precisi�n de 15-16 
% d�gitos significativos.
function resultado = metodoDeRomberg(f, a, b, K)

    format longG;
    
    % Creamos la tabla en la cual se iran almacenando los valores
    % calculados en las iteraciones
    R = zeros(1, K);
    
    % Llenamos la primer columna de la tabla aplicando Romberg
    for k = 1:K
        
        hk = (b-a)/(2^(k-1));
        r = 0;
        
        for i = 1:((2^(k-1))-1)
           r = r + f(a+i*hk);
        end    

        R(k,1) = (hk/2) * (f(a) + f(b) + 2*r);
        
    end

    % Calculamos los demas valores usando la extrapolaci�n de Richardson
    for k = 2:K
        for j =2:k
            
            R(k,j) = R(k,j-1) + (R(k,j-1) - R(k-1,j-1)) / ((4^(j-1)) - 1);
            
        end       
    end
    
    resultado = R(K,K);