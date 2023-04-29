disp('++++++++++++++++++++++++++++++')
disp('�� 6.5�i�I�u�U�[�o�Q�C���̐݌v�F���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

A = [   0      1      0      0
      -k/M1 -mu/M1   k/M1  mu/M1
        0      0      0      1
       k/M2  mu/M2  -k/M2 -mu/M2 ];
B = [  0
      1/M1
       0
       0  ];
C = [ 0  0  1  0 ];

syms l1 l2 l3 l4 s

L = [ l1
      l2
      l3
      l4 ];

disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,C)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end

disp(' ')
disp('____ �X�e�b�v 1 ______________________________________________________')

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -4+4j
      -4-4j
      -4+2j
      -4-2j ]

disp(' ')
disp('--- ��(��) = ��^4 + d3*��^3 + d2*��^2 + d1*�� + d0  ---------')
delta = (s - p(1))*(s - p(2))*(s - p(3))*(s - p(4))
delta = collect(delta)

d0 = subs(diff(delta, s, 0), s, 0)/factorial(0)
d1 = subs(diff(delta, s, 1), s, 0)/factorial(1)
d2 = subs(diff(delta, s, 2), s, 0)/factorial(2)
d3 = subs(diff(delta, s, 3), s, 0)/factorial(3)

disp(' ')
disp('--- ��_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*I  ---------')

Delta_A = A^4 + d3*A^3 + d2*A^2 + d1*A + d0*eye(4)




disp(' ')
disp('____ �X�e�b�v 2 ______________________________________________________')

disp(' ')
disp('--- Vo �̋t�s�� ---------')
sym(inv(Vo))

disp('--- e ---------')
e = [ 0  0  0  1 ]

disp(' ')
disp('--- �I�u�U�[�o�Q�C�� L = [ l1')
disp('                          l2')
disp('                          l3')
disp('                          l4 ] ---------')

L = - Delta_A*inv(Vo)*e'

disp(' ')
disp('--- A + L*C �̌ŗL�l ---------')
eig(A + L*C)
