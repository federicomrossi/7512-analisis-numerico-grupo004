% Función que a partir de una fotografía completa de un objeto sometido a
% un calentamiento no uniforme, genera un gráfico de temperaturas del mismo
% y encuentra el punto más caliente.
function [] = tp1ItemC()

    % Configuración
    nombreImagen = '1160.tif';
    directorio = 'Matrices/';
    dimM = 480;
    dimN = 640;
    
    % Procesamos el archivo de la imagen.
    matrizDeImagen =imread(strcat(directorio, nombreImagen));
    %Generamos una matriz nueva de iguales dimensiones a la imagen.
    matrizDeTemperaturasDeImagen = zeros(dimM, dimN);
    
    % Calculamos la temperatura de cada pixel de la imagen y la almacenamos
    % en la respectiva matriz.
    for i = 1:dimM
        for j = 1:dimN
        
            matrizDeTemperaturasDeImagen(i,j) = 490.05 * ( ( double(matrizDeImagen(i,j)) ) ^ 0.2);
           
        end
    end

    % Imprimimos la temperatura máxima de la imagen
    strcat('Temperatura máxima: ', num2str(max(max(matrizDeTemperaturasDeImagen))), '°C')
    
    % Generamos el gráfico 3D de temperaturas.
    x = 1:1:640;
    y = 1:1:480;
    [X,Y] = meshgrid(x,y);
    
    mesh(X,Y,matrizDeTemperaturasDeImagen)
    title('GRÁFICO DE TEMPERATURAS DE UNA IMAGEN')
    colorbar
    xlabel('Ancho')
    ylabel('Alto')
    zlabel('Temperatura')