disp('++++++++++++++++++++++++++++++')
disp('ó· 4.2 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms R1 C1 R2 C2 positive

disp(' ')
disp('--- A, B ------')
A = [ -1/(R1*C1)     0
          0      -1/(R2*C2) ]
B = [ 1/(R1*C1)
          0     ]

disp(' ')
disp('--- â¬êßå‰çsóÒ Vc  ------')
Vc = [ B  A*B ]

disp(' ')
disp('--- |Vc| ------')
det_Vc = det(Vc)
