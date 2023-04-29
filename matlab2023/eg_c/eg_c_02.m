disp('++++++++++++++++++++++++++++++')
disp('—á C.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms a11 a12 a13
syms a21 a22 a23
syms a31 a32 a33

disp(' ')
disp('--- 3 x 3 ‚Ìs—ñ A ------')
A = [ a11  a12  a13
      a21  a22  a23
      a31  a32  a33 ]

disp(' ')
disp('--- A ‚Ì‹ts—ñ ------')
inv_A = inv(A)