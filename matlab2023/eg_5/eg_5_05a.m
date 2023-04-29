disp('++++++++++++++++++++++++++++++')
disp('�� 5.5�i�A�b�J�[�}���̋ɔz�u�A���S���Y���F���������j')
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
disp('--- �g��΍��V�X�e�� ---------')
Ae = [ A  zeros(4,1)
      -c      0      ]
be = [ b
       0 ]

disp(' ')
disp('____ �X�e�b�v 1 _______________________________________________')
disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -1+3j
      -1-3j
      -2+j
      -2-j
      -2 ]

disp(' ')
disp('--- ��(��) = ��^5 + d4*��^4 + d3*��^3 + d2*��^2 + d1*�� + d0  ---------')
syms s
eq = (s - p(1))*(s - p(2))*(s - p(3))*(s - p(4))*(s - p(5));
eq = expand(eq)

d0 = subs(eq,0)
d1 = subs(diff(eq,1,s),0)/factorial(1)
d2 = subs(diff(eq,2,s),0)/factorial(2)
d3 = subs(diff(eq,3,s),0)/factorial(3)
d4 = subs(diff(eq,4,s),0)/factorial(4)

disp(' ')
disp('--- ��_Ae = Ae^5 + d4*Ae^4 + d3*Ae^3 + d2*Ae^2 + d1*Ae + d0*I ---------')
Delta_Ae = Ae^5 + d4*Ae^4 + d3*Ae^3 + d2*Ae^2 + d1*Ae + d0*eye(5)

disp(' ')
disp('____ �X�e�b�v 2 _______________________________________________')
disp(' ')
disp('--- ����s�� Vce ---------')
Vce = ctrb(Ae,be);
Vce = sym(Vce)

disp(' ')
disp('--- |Vce| ---------')
det(Vce)

disp(' ')
disp('--- Vce �̋t�s�� ---------')
inv(Vce)

disp(' ')
disp('--- e ---------')
e = [ 0  0  0  0  1 ]

disp(' ')
disp('--- u(t) = ke*xe(t) ---------')
ke = - e*inv(Vce)*Delta_Ae

disp(' ')
disp('--- Ae + be*ke �̌ŗL�l ---------')
eig(Ae + be*ke)

disp(' ')
disp('--- u(t) = ke*xe(t) = k*x(t) + g*w(t) ---------')
k = ke(1:4)
g = ke(5)
