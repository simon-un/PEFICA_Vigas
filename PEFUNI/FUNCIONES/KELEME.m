% Matriz de rigidez de un elemento finitofunction [MTX] = KELEME(XYE,CAE)  % Entrada:  % TIPR:   código del tipo de problema  % XYE():  coordenadas de los nudos del elemento  % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento  TIPE = CAE(3); % código del tipo de elemento  switch TIPE    case 101 % elemento de fuerza axial unidimensional lineal de continuidad c0      [MTX] = KAXIAL(XYE,CAE);    case 102 % elemento de fuerza axial unidimensional cuadrático de continuidad c0      [MTX] = KAXIAC(XYE,CAE);    case 111 % elemento de flexión unidimensional cúbico de continuidad c1      [MTX] = KBEAME(XYE,CAE);    case 112 %%M-DV%% elemento de flexión unidimensional lineal de continuidad c0 (Timoshenko con Ks 1 puntos de Gauss)      [MTX] = KBEAMT1(XYE,CAE);    case 113 %%M-DV%% elemento de flexión unidimensional lineal de continuidad c0 (Timoshenko con Ks 2 punto de Gauss)      [MTX] = KBEAMT2(XYE,CAE);    otherwise      % pendiente  end end% ------------------------------------------------------------------------% Matriz de rigidez del elemento unidimensional linealfunction [MTX] = KAXIAL(XYE,CAE)  % Entrada:  % XYE():  coordenadas de los nudos del elemento   % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento    EYOU = CAE(1);              % módulo de elasticidad del elemento  AREA = CAE(2);              % área de la sección transversal del elemento  LONE = XYE(2,1) - XYE(1,1); % longitud y matriz de transformación del elem    % matriz de rigidez  MTX = (EYOU*AREA/LONE)*[ 1  -1 ;                          -1   1 ];  end% ------------------------------------------------------------------------% Matriz de rigidez del elemento unidimensional cuadráticofunction [MTX] = KAXIAC(XYE,CAE)  % Entrada:  % XYE():  coordenadas de los nudos del elemento, considerando los extremos  %         como los dos primeros nudos del elemento  % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento    EYOU = CAE(1);              % módulo de elasticidad del elemento  AREA = CAE(2);              % área de la sección transversal del elemento  LONE = XYE(2,1) - XYE(1,1); % longitud y matriz de transformación del elem    % matriz de rigidez  MTX = (EYOU*AREA/(3*LONE))*[ 7  1 -8 ;                               1  7 -8 ;                              -8 -8 16 ];  end% ------------------------------------------------------------------------% Matriz de rigidez del elemento unidimensional viga Euler - Bernoulli de continuidad c1function [MTX] = KBEAME(XYE,CAE)  % Entrada:  % XYE():  coordenadas de los nudos del elemento   % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento    EYOU = CAE(1);              % módulo de elasticidad del elemento  INER = CAE(2);              % área de la sección transversal del elemento  LONE = XYE(2,1) - XYE(1,1); % longitud del elemento    % matriz de rigidez  MTX = (EYOU*INER)*[ 12/LONE^3  6/LONE^2  -12/LONE^3  6/LONE^2 ;                       6/LONE^2  4/LONE    -6/LONE^2   2/LONE   ;                     -12/LONE^3 -6/LONE^2  12/LONE^3  -6/LONE^2 ;                       6/LONE^2  2/LONE    -6/LONE^2   4/LONE  ];end% ------------------------------------------------------------------------% Matriz de rigidez del elemento unidimensional viga Timoshenko con Ks 2% puntos function [MTX] = KBEAMT2(XYE,CAE)  % Entrada:  % XYE():  coordenadas de los nudos del elemento   % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento    EYOU = CAE(1);              % módulo de elasticidad del elemento  INER = CAE(2);              % Inercia de la sección transversal del elemento  AREAM = CAE(4)*CAE(5);             %%M-DV%% Area minimizada por el coeficiente Kz  GCOR = CAE(1)/(2*(1+CAE(6)));              %%M-DV%% Modulo de corte de la seccion  LONE = XYE(2,1) - XYE(1,1); % longitud del elemento    % matriz de rigidez  MTX = [  GCOR*AREAM/LONE   GCOR*AREAM/2                           -GCOR*AREAM/LONE   GCOR*AREAM/2                          ;           GCOR*AREAM/2     (GCOR*AREAM*LONE/3 + EYOU*INER/LONE)    -GCOR*AREAM/2     (GCOR*AREAM*LONE/6 - EYOU*INER/LONE)   ;          -GCOR*AREAM/LONE  -GCOR*AREAM/2                            GCOR*AREAM/LONE  -GCOR*AREAM/2                          ;           GCOR*AREAM/2     (GCOR*AREAM*LONE/6 - EYOU*INER/LONE)    -GCOR*AREAM/2     (GCOR*AREAM*LONE/3 + EYOU*INER/LONE)  ];end% ------------------------------------------------------------------------% Matriz de rigidez del elemento unidimensional viga Timoshenko con Ks 1% puntos function [MTX] = KBEAMT1(XYE,CAE)  % Entrada:  % XYE():  coordenadas de los nudos del elemento   % CAE():  propiedades de la categoría del elemento  %         % Salida:  % MTX():  matriz de rigidez del elemento    EYOU = CAE(1);                % módulo de elasticidad del elemento  INER = CAE(2);                % Inercia de la sección transversal del elemento  AREAM = CAE(4)*CAE(5);        %%M-DV%% �rea minimizada por el coeficiente Kz  GCOR = CAE(1)/(2*(1+CAE(6))); %%M-DV%% M�dulo de corte de la secci�n  DB = EYOU * INER;             %%M-DV%%  DS = GCOR * AREAM;            %%M-DV%%  LONE = XYE(2,1) - XYE(1,1);   % longitud del elemento    % matriz de rigidez  MTX = [  DS/LONE   DS/2                  -DS/LONE   DS/2                   ;           DS/2     (DS*LONE/4 + DB/LONE)  -DS/2     (DS*LONE/4 - DB/LONE)   ;          -DS/LONE  -DS/2                   DS/LONE  -DS/2                   ;           DS/2     (DS*LONE/4 - DB/LONE)  -DS/2     (DS*LONE/4 + DB/LONE)  ];end