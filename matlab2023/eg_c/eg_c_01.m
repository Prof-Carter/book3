disp('++++++++++++++++++++++++++++++')
disp('例 C.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms a11 a12 a13 real
syms a21 a22 a23 real
syms a31 a32 a33 real

disp(' ')
disp('--- 3 x 3 の行列 A ------')
A = [ a11  a12  a13
      a21  a22  a23
      a31  a32  a33 ]

disp(' ')
disp('--- |A| ------')
det_A = det(A)