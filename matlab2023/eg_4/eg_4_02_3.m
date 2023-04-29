disp('++++++++++++++++++++++++++++++')
disp('—á 4.2 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms R1 C1 R2 C2

disp(' ')
disp('--- A, B ------')
A = [ -1/(R1*C1)     0
          0      -1/(R2*C2) ]
B = [ 1/(R1*C1)
      1/(R2*C2) ]

disp(' ')
disp('--- ‰Â§Œäs—ñ Vc  ------')
Vc = [ B  A*B ]

disp(' ')
disp('--- |Vc| ------')
det_Vc = det(Vc)
