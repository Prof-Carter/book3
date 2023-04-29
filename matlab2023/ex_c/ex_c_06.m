disp('++++++++++++++++++++++++++++++')
disp('問題 C.6 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [ 0  1
     -2 -3 ]

disp(' ')
disp('--- A の特性多項式 |λI - A| = λ^2 + a1*λ + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 C.6 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [  0  1
     -10 -2 ]

disp(' ')
disp('--- A の特性多項式 |λI - A| = λ^2 + a1*λ + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)

