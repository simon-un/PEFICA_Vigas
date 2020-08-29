% |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%           DATOS GENERADOS DE GiD PARA MATLAB - OCTAVE              
% |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

% INFORMACION DE UNIDADES:
% Todas las unidades estan dadas en el sistema internacional
%           Distancia:             | m
%           Fuerza:                | N
%           Modulo de Young:	   | Pa
%           Inercia:               | m^4
%           Area:                  | m^2

% INFORMACION DEL PROBLEMA:
% 			Numero de elementos:   | 20
% 			Numero de nudos:       | 21

IMPR = 9;  % Tipo de impresion de resultados
TIPR = 11;  % Tipo de problema, en este caso siempre sera 11 ya que estamos trabajando con vigas
NIIE = 0;  % Numero de interpolaciones internas por elemento

% TABLA DE CATEGORIAS: CAT()
% 			EYOU: Modulo de Young
% 			INER: Inercia
% 			TIPE: Tipo de analisis del elemento
% 				  111: Euler-Bernoulli
% 				  112: Timoshenko 1PG - 1 Punto de Gauss-Legendre para el calculo de matriz Kz
% 				  113: Timoshenko 2PG - 2 Punto de Gauss-Legendre para el calculo de matriz Kz
% 				  212: 111 y 112 simultaneamente
% 				  213: 111 y 113 simultaneamente
% 				  223: 112 y 113 simultaneamente
% 				  300: 111, 112 y 113 simultaneamente
% 			AREA: Area
% 			Kz: Parametro de correccion de cortante (Timoshenko)
% 			POISS: Coeficiente de Poisson
% CAT = [ EYOU    INER    TIPE    AREA    Kz    POISS ]  

CAT = [ ...
  2.15000e+10  1.60000e-03 113  1.20000e-01  8.30000e-01  2.00000e-01
];


% TABLA DE CONECTIVIDADES DE LOS ELEMENTOS: ELE()
% 			ELEM: Numero del elemento finito
% 			ICAT: Indice de categoria
% 			NUDI: Identificacion del primer nudo del elemento
% 			NUDJ: Identificacion del segundo nudo del elemento
% NOTA IMPORTANTE: Mas abajo se eliminara la primera columna ELEM, para que ELE() sea compatible
%				   con el programa PEFUNI
% ELE = [ ELEM    ICAT    NUDI    NUDJ ]  

ELE = [ ...
         1          1        21         20 
         2          1        20         19 
         3          1        19         18 
         4          1        18         17 
         5          1        17         16 
         6          1        16         15 
         7          1        15         14 
         8          1        14         13 
         9          1        13         12 
        10          1        12         11 
        11          1        11         10 
        12          1        10          9 
        13          1         9          8 
        14          1         8          7 
        15          1         7          6 
        16          1         6          5 
        17          1         5          4 
        18          1         4          3 
        19          1         3          2 
        20          1         2          1 
];

ELE(:,1)= []; %Aqui se elimina la primera columna ELEM, para que ELE() sea compatible con PEFUNI


% TABLA DE COORDENADAS DE LOS NUDOS: XYZ()
% Cada fila corresponde al numero del nudo
% 			XNUD: Coordenada x del nudo
% XYZ = [ XNUD ]  

XYZ = [ ...
    5.00000e+00 
    4.75000e+00 
    4.50000e+00 
    4.25000e+00 
    4.00000e+00 
    3.75000e+00 
    3.50000e+00 
    3.25000e+00 
    3.00000e+00 
    2.75000e+00 
    2.50000e+00 
    2.25000e+00 
    2.00000e+00 
    1.75000e+00 
    1.50000e+00 
    1.25000e+00 
    1.00000e+00 
    7.50000e-01 
    5.00000e-01 
    2.50000e-01 
    0.00000e+00 
];


% TABLA DE DESPLAZAMIENTOS CONOCIDOS: UCO() 
% 			INUD: número del nudo 
% 			DCUY: indicador si el desplazam en y es conocido o no (1:conoc o 0:descon) 
% 			DCRZ: indicador si la rotación en z es conocida o no (1:conoc o 0:descon) 
% 			VAUY: valor del desplazamiento en y conocido.  No importa su valor si DCUY=0 
% 			VARZ: valor de la rotación en z conocido. No importa su valor cuando DCRZ=0 
% UCO = [ INUD   DCUY   DCRZ   VAUY   VARZ ] 

UCO = [ ...
21    1   1  0.00000e+00  0.00000e+00
];


% TABLA DE FUERZAS APLICADAS EN LOS NUDOS DE LA MALLA. FUN()
% 			INUD: número del nudo 
% 			FUNY: valor de la fuerza puntual en dirección y 
% 			FUMZ: valor del momento alrededor del eje z. 
% FUN = [ INUD    FUNX    FUMZ ] 

FUN = [ ...
1  -5.00000e+04  0.00000e+00
];


% TABLA DE FUERZAS DISTRIBUIDAS UNIFORMEMENTE EN LOS ELEMENTOS: FDI()
% 			IELE: número del elemento IELE 
% 			WELE: valor de la carga distribuida uniforme en dirección y.
% FDI = [ IELE    WELE ] 

FDI = [ ...
];


% TABLA DE FUERZAS DISTRIBUIDAS LINEALMENTE EN LOS ELEMENTOS: FDIL()
% 			IELE: número del elemento IELE 
% 			MFDILI: valor inicial de la carga en el elemento general antes de crear la malla
% 			MFDILF: valor final de la carga en el elemento general antes de crear la malla
% FDI = [ IELE    MFDILI    MFDILF ] 

FDIL = [ ...
];
NIT = 0;  % Numero de iteracion, se utiliza para los casos de TIPE = 212, 213, 223 y 300






