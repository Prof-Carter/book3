disp('++++++++++++++++++++++++++++++')
disp('例 6.5（オブザーバゲインの設計：数値計算 ===> 関数 acker を利用）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

A = [   0      1      0      0
      -k/M1 -mu/M1   k/M1  mu/M1
        0      0      0      1
       k/M2  mu/M2  -k/M2 -mu/M2 ];
B = [  0
      1/M1
       0
       0  ];
C = [ 0  0  1  0 ];

p = [ -4+4j
      -4-4j
      -4+2j
      -4-2j ]

Ad = A';
Bd = C';
Kd = - acker(Ad,Bd,p);

L = Kd'

