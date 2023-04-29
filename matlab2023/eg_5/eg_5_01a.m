disp('++++++++++++++++++++++++++++++')
disp('�� 5.1�i���l�̎Z�o�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];


disp(' ')
disp('----- M0 ------')
M0 = [ A  b
       c  0 ]

disp(' ')
disp('----- |M0| ------')
det_M0 = det(M0)

if det_M0 == 0
    disp('M0 �͐����ł͂Ȃ�')
else
    disp('M0 �͐����ł���')
end

disp(' ')
disp('----- M0 �̋t�s�� ------')
inv(M0)
sym(inv(M0))

% -------------------------------------------
syms y_ref

xu_inf = inv(M0)*[zeros(4,1); 1]*y_ref;

disp(' ')
disp('----- x�� ------')
x_inf = xu_inf(1:4)

disp(' ')
disp('----- u�� ------')
u_inf = xu_inf(5)
