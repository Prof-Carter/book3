disp('++++++++++++++++++++++++++++++')
disp('例 C.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms a11 a12 a21 a22 real
syms x1 x2 real

disp(' ')
disp('--- 2 x 2 の行列 A ------')
A = [ a11  a12
      a21  a22 ]

disp(' ')
disp('--- 2 x 1 の縦ベクトル x ------')
x = [ x1
      x2 ]

disp(' ')
disp('--- x''*A*x ------')
collect(x'*A*x)

disp(' ')
disp('--- x*x''*A ------')
collect(x*x'*A)

disp(' ')
disp('--- trace[x*x''*A] ------')
collect(trace(x*x'*A))

disp(' ')
disp('--- A*x*x'' ------')
collect(A*x*x')

disp(' ')
disp('--- trace[A*x*x''] ------')
collect(trace(A*x*x'))