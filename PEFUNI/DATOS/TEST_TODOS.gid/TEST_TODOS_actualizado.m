% ==================================================================
%                        General Data File
% ==================================================================
% Units:
% length m mass kg
% Number of elements and nodes:
% .................................................................

% 50 51
% Material      Surface density kg/m^2

IMPR=9;
TIPR=11;
NIIE=5;
 %   EYOU    INER   TIPE   A   Kz   MPOISS   
CAT = [ ...
  2.15000e+10  1.60000e-03 300  1.20000e-01  8.30000e-01  2.00000e-01
  2.50000e+10  1.60000e-03 300  1.20000e-01  8.30000e-01  2.00000e-01
];

% .................................................................

%    Element    Node(1)   Node(2)    Material     inercia
ELE = [ ...
         1          1         1          2 
         2          1         2          3 
         3          1         3          4 
         4          1         4          5 
         5          1         5          6 
         6          1         6          7 
         7          1         7          8 
         8          1         8          9 
         9          1         9         10 
        10          1        10         11 
        11          1        11         12 
        12          1        12         13 
        13          1        13         14 
        14          1        14         15 
        15          1        15         16 
        16          1        16         17 
        17          1        17         18 
        18          1        18         19 
        19          1        19         20 
        20          1        20         21 
        21          1        21         22 
        22          1        22         23 
        23          1        23         24 
        24          1        24         25 
        25          1        25         26 
        26          1        26         27 
        27          1        27         28 
        28          1        28         29 
        29          1        29         30 
        30          1        30         31 
        31          2        31         32 
        32          2        32         33 
        33          2        33         34 
        34          2        34         35 
        35          2        35         36 
        36          2        36         37 
        37          2        37         38 
        38          2        38         39 
        39          2        39         40 
        40          2        40         41 
        41          2        41         42 
        42          2        42         43 
        43          2        43         44 
        44          2        44         45 
        45          2        45         46 
        46          2        46         47 
        47          2        47         48 
        48          2        48         49 
        49          2        49         50 
        50          2        50         51 
];
ELE(:,1)=[];


% .................................................................

% Coordinates:
% X m
XYZ = [ ...
    0.00000e+00 
    1.00000e-01 
    2.00000e-01 
    3.00000e-01 
    4.00000e-01 
    5.00000e-01 
    6.00000e-01 
    7.00000e-01 
    8.00000e-01 
    9.00000e-01 
    1.00000e+00 
    1.10000e+00 
    1.20000e+00 
    1.30000e+00 
    1.40000e+00 
    1.50000e+00 
    1.60000e+00 
    1.70000e+00 
    1.80000e+00 
    1.90000e+00 
    2.00000e+00 
    2.10000e+00 
    2.20000e+00 
    2.30000e+00 
    2.40000e+00 
    2.50000e+00 
    2.60000e+00 
    2.70000e+00 
    2.80000e+00 
    2.90000e+00 
    3.00000e+00 
    3.10000e+00 
    3.20000e+00 
    3.30000e+00 
    3.40000e+00 
    3.50000e+00 
    3.60000e+00 
    3.70000e+00 
    3.80000e+00 
    3.90000e+00 
    4.00000e+00 
    4.10000e+00 
    4.20000e+00 
    4.30000e+00 
    4.40000e+00 
    4.50000e+00 
    4.60000e+00 
    4.70000e+00 
    4.80000e+00 
    4.90000e+00 
    5.00000e+00 
];

% .................................................................

% Categorias:

% .................................................................


% .................................................................

% Nudo    indy   indz    VAUY     VAUZ
UCO = [ ...
1    1   1  0.00000e+00  0.00000e+00
51    1   0  0.00000e+00  0.00000e+00
];

% .................................................................

% Nudo    FUNY     FUMZ
FUN = [ ...
31  -3.50000e+04  0.00000e+00
51   0.00000e+00  2.00000e+04
];

% .................................................................

% Nudo    WELE
FDI = [ ...
         1  -1.00000e+04
         2  -1.00000e+04
         3  -1.00000e+04
         4  -1.00000e+04
         5  -1.00000e+04
         6  -1.00000e+04
         7  -1.00000e+04
         8  -1.00000e+04
         9  -1.00000e+04
        10  -1.00000e+04
        11  -1.00000e+04
        12  -1.00000e+04
        13  -1.00000e+04
        14  -1.00000e+04
        15  -1.00000e+04
        16  -1.00000e+04
        17  -1.00000e+04
        18  -1.00000e+04
        19  -1.00000e+04
        20  -1.00000e+04
        21  -1.00000e+04
        22  -1.00000e+04
        23  -1.00000e+04
        24  -1.00000e+04
        25  -1.00000e+04
        26  -1.00000e+04
        27  -1.00000e+04
        28  -1.00000e+04
        29  -1.00000e+04
        30  -1.00000e+04
];

% .................................................................

FDIL = [ ...
         1  -1.50000e+04 -9.00000e+03
         2  -1.50000e+04 -9.00000e+03
         3  -1.50000e+04 -9.00000e+03
         4  -1.50000e+04 -9.00000e+03
         5  -1.50000e+04 -9.00000e+03
         6  -1.50000e+04 -9.00000e+03
         7  -1.50000e+04 -9.00000e+03
         8  -1.50000e+04 -9.00000e+03
         9  -1.50000e+04 -9.00000e+03
        10  -1.50000e+04 -9.00000e+03
        11  -1.50000e+04 -9.00000e+03
        12  -1.50000e+04 -9.00000e+03
        13  -1.50000e+04 -9.00000e+03
        14  -1.50000e+04 -9.00000e+03
        15  -1.50000e+04 -9.00000e+03
        16  -1.50000e+04 -9.00000e+03
        17  -1.50000e+04 -9.00000e+03
        18  -1.50000e+04 -9.00000e+03
        19  -1.50000e+04 -9.00000e+03
        20  -1.50000e+04 -9.00000e+03
        21  -1.50000e+04 -9.00000e+03
        22  -1.50000e+04 -9.00000e+03
        23  -1.50000e+04 -9.00000e+03
        24  -1.50000e+04 -9.00000e+03
        25  -1.50000e+04 -9.00000e+03
        26  -1.50000e+04 -9.00000e+03
        27  -1.50000e+04 -9.00000e+03
        28  -1.50000e+04 -9.00000e+03
        29  -1.50000e+04 -9.00000e+03
        30  -1.50000e+04 -9.00000e+03
        31  -9.00000e+03 -5.00000e+03
        32  -9.00000e+03 -5.00000e+03
        33  -9.00000e+03 -5.00000e+03
        34  -9.00000e+03 -5.00000e+03
        35  -9.00000e+03 -5.00000e+03
        36  -9.00000e+03 -5.00000e+03
        37  -9.00000e+03 -5.00000e+03
        38  -9.00000e+03 -5.00000e+03
        39  -9.00000e+03 -5.00000e+03
        40  -9.00000e+03 -5.00000e+03
        41  -9.00000e+03 -5.00000e+03
        42  -9.00000e+03 -5.00000e+03
        43  -9.00000e+03 -5.00000e+03
        44  -9.00000e+03 -5.00000e+03
        45  -9.00000e+03 -5.00000e+03
        46  -9.00000e+03 -5.00000e+03
        47  -9.00000e+03 -5.00000e+03
        48  -9.00000e+03 -5.00000e+03
        49  -9.00000e+03 -5.00000e+03
        50  -9.00000e+03 -5.00000e+03
];
NIT = 0;






DIRA = "DATOS/TEST_TODOS.gid";
NIT = 1;
CAT = [...
21500000000.000000 0.001600 111.000000 0.120000 0.830000 0.200000 ;
25000000000.000000 0.001600 111.000000 0.120000 0.830000 0.200000 ;
];
DIRA = "DATOS/TEST_TODOS.gid";
NIT = 2;
CAT = [...
21500000000.000000 0.001600 112.000000 0.120000 0.830000 0.200000 ;
25000000000.000000 0.001600 112.000000 0.120000 0.830000 0.200000 ;
];
DIRA = "DATOS/TEST_TODOS.gid";
NIT = 3;
CAT = [...
21500000000.000000 0.001600 113.000000 0.120000 0.830000 0.200000 ;
25000000000.000000 0.001600 113.000000 0.120000 0.830000 0.200000 ;
];