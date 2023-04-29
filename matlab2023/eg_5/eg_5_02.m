disp('++++++++++++++++++++++++++++++')
disp('�� 5.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s

A = [ -2  1
       0 -3 ];
b = [  0
       2 ];
c = [ -2  2 ];

disp(' ')
disp('--- M(s) ---------')
M = [ -(s*eye(2)-A)  b
            c        0 ]
disp(' ')
disp('--- |M(s)| ---------')
det_M = det(M)

disp(' ')
disp('--- |M(s)| = 0 �̉��i�s�ϗ�_�j ---------')
solve(det_M, s)

disp(' ')
disp('--- �`�B�֐� ---------')
zpk_P = zpk(ss(A,b,c,0))

disp(' ')
disp('--- ��_ z�C�� p�C�Q�C�� k ---------')
[z p k] = zpkdata(zpk_P,'v')
