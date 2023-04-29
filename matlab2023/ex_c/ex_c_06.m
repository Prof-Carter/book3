disp('++++++++++++++++++++++++++++++')
disp('–â‘è C.6 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- s—ñ A ------')
A = [ 0  1
     -2 -3 ]

disp(' ')
disp('--- A ‚Ì“Á«‘½€® |ƒÉI - A| = ƒÉ^2 + a1*ƒÉ + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('–â‘è C.6 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- s—ñ A ------')
A = [  0  1
     -10 -2 ]

disp(' ')
disp('--- A ‚Ì“Á«‘½€® |ƒÉI - A| = ƒÉ^2 + a1*ƒÉ + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)

