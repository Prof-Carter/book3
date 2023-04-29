disp('++++++++++++++++++++++++++++++')
disp('例 C.7（数式処理）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 2  1
      1  2 ] 
A = sym(A);

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