disp('++++++++++++++++++++++++++++++')
disp('�� C.5�i���l�v�Z�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �s�� A ------')
A = [ 2  1
      1  2 ]

[S Lambda] = eig(A);

disp(' ')
disp('--- �ŗL�l��1�C�ŗL�x�N�g�� v1 ------')
lambda1 = Lambda(1,1)
v1 = S(:,1)


disp(' ')
disp('--- �ŗL�l��2�C�ŗL�x�N�g�� v2 ------')
lambda2 = Lambda(2,2)
v2 = S(:,2)