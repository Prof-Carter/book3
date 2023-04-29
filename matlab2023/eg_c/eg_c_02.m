disp('++++++++++++++++++++++++++++++')
disp('例 C.2')
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
disp('--- A の逆行列：inv_A ------')
inv_A = inv(A)

disp(' ')
disp('--- A の行列式 |A|：det_A ------')
det_A = det(A)

disp(' ')
disp('--- inv_A*det_A ------')
inv_A*det_A