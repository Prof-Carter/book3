disp('++++++++++++++++++++++++++++++')
disp('—á C.7')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 2  1
      1  2 ] 

disp(' ')
disp('--- A ‚Ì“Á«‘½€® |ƒÉI - A| = ƒÉ^2 + a1*ƒÉ + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)
