disp('++++++++++++++++++++++++++++++')
disp('��� C.5 (1)�i���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �s�� A ------')
A = [ 0  1
     -2 -3 ]
A = sym(A);

disp(' ')
disp('--- �ŗL�l ��1, ��2     ------')
disp('--- �ŗL�x�N�g�� v1, v2 ------')
disp('--- S = [ v1  v2 ]     ------')
disp('--- �� = [ ��1   0              ')
disp('            0  ��2 ]   ------')
[S, Lambda] = eig(A)

disp(' ')
disp('--- inv(S)*A*S = �� ------')
inv(S)*A*S


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� C.5 (2)�i���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �s�� A ------')
A = [  0  1
     -10 -2 ]
A = sym(A);

disp(' ')
disp('--- �ŗL�l ��1, ��2     ------')
disp('--- �ŗL�x�N�g�� v1, v2 ------')
disp('--- S = [ v1  v2 ]     ------')
disp('--- �� = [ ��1   0              ')
disp('            0  ��2 ]   ------')
[S, Lambda] = eig(A)

disp(' ')
disp('--- inv(S)*A*S = �� ------')
inv(S)*A*S

