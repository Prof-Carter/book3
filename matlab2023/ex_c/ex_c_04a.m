disp('++++++++++++++++++++++++++++++')
disp('問題 C.4 (1)（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [ 0  1
     -2 -3 ]

[S Lambda] = eig(A);

disp(' ')
disp('--- 固有値λ1，固有ベクトル v1 ------')
lambda1 = Lambda(1,1)
v1 = S(:,1)

disp(' ')
disp('--- 固有値λ2，固有ベクトル v2 ------')
lambda2 = Lambda(2,2)
v2 = S(:,2)


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 C.4 (2)（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [  0  1
     -10 -2 ]

[S Lambda] = eig(A);

disp(' ')
disp('--- 固有値λ1，固有ベクトル v1 ------')
lambda1 = Lambda(1,1)
v1 = S(:,1)

disp(' ')
disp('--- 固有値λ2，固有ベクトル v2 ------')
lambda2 = Lambda(2,2)
v2 = S(:,2)