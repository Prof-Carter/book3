disp('++++++++++++++++++++++++++++++')
disp('例 4.2 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms R1 C1 R2 C2 real

disp(' ')
disp('--- A, B ------')
A = [ -(R1+R2)/(R1*R2*C1)  1/(R2*C1)
             1/(R2*C2)    -1/(R2*C2) ]
B = [ 1/(R1*C1)
          0     ]

disp(' ')
disp('--- 可制御行列 Vc  ------')
Vc = [ B  A*B ]

disp(' ')
disp('--- |Vc| ------')
det_Vc = det(Vc)
