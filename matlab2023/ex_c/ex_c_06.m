disp('++++++++++++++++++++++++++++++')
disp('��� C.6 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �s�� A ------')
A = [ 0  1
     -2 -3 ]

disp(' ')
disp('--- A �̓��������� |��I - A| = ��^2 + a1*�� + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� C.6 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �s�� A ------')
A = [  0  1
     -10 -2 ]

disp(' ')
disp('--- A �̓��������� |��I - A| = ��^2 + a1*�� + a0 ------')
a = poly(A)
a0 = a(3)
a1 = a(2)

disp(' ')
disp('--- A^2 + a1*A + a0*I = O ------')
A^2 + a1*A + a0*eye(2)

