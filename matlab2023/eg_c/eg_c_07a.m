disp('++++++++++++++++++++++++++++++')
disp('�� C.7�i���l�v�Z�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 2  1
      1  2 ] 

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