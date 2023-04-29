disp('++++++++++++++++++++++++++++++')
disp('問題 C.5 (1)（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [ 0  1
     -2 -3 ]

disp(' ')
disp('--- 固有値 λ1, λ2     ------')
disp('--- 固有ベクトル v1, v2 ------')
disp('--- S = [ v1  v2 ]     ------')
disp('--- Λ = [ λ1   0              ')
disp('            0  λ2 ]   ------')
[S, Lambda] = eig(A)

disp(' ')
disp('--- inv(S)*A*S = Λ ------')
inv(S)*A*S


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 C.5 (2)（数値計算）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 行列 A ------')
A = [  0  1
     -10 -2 ]

disp(' ')
disp('--- 固有値 λ1, λ2     ------')
disp('--- 固有ベクトル v1, v2 ------')
disp('--- S = [ v1  v2 ]     ------')
disp('--- Λ = [ λ1   0              ')
disp('            0  λ2 ]   ------')
[S, Lambda] = eig(A)

disp(' ')
disp('--- inv(S)*A*S = Λ ------')
inv(S)*A*S

