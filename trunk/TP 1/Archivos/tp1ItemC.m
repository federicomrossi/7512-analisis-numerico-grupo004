function [] = tp1ItemC()

    nombreImagen = '1160.tif';
    directorio = 'Matrices/';
    dimM = 480;
    dimN = 640;
    
    matrizDeImagen =imread(strcat(directorio, nombreImagen));
    matrizDeTemperaturasDeImagen = zeros(dimM, dimN);
    
    
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
    title('GRAFICO DE TEMPERATURAS DE UNA IMAGEN')
    colorbar
    xlabel('Ancho')
    ylabel('Alto')
    zlabel('Temperatura')