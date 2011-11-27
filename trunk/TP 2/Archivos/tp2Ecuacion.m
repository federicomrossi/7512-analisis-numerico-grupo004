% Funci�n que representa la ecuaci�n simplificada que rige el
% comportamiento temporal de un reactor nuclear.
function res = tp2Ecuacion(t, N)
    
    format longG
    
    % Vida media en segundos de un neutr�n en el n�cleo
    I = 0.3;
    
    valorK = obtenerValorK(t);
    
    res = (valorK(1,2) - 1) * N / I;