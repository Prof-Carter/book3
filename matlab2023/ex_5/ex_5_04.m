disp('++++++++++++++++++++++++++++++')
disp('��� 5.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1 
     -2  3 ];
b = [ 0
      1 ];
c = [ 1  0 ];

disp(' ')
disp('--- �g��΍��V�X�e�� ---------')
Ae = [ A  zeros(2,1)
      -c      0      ]
be = [ b
       0 ]

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -2+2j
      -2-2j
      -2 ]

disp(' ')
disp('--- u(t) = ke*xe(t) ---------')
ke = -acker(Ae,be,p)

disp(' ')
disp('--- Ae + be*ke �̌ŗL�l ---------')
eig(Ae + be*ke)

disp(' ')
disp('--- u(t) = ke*xe(t) = k*x(t) + g*w(t) ---------')
k = ke(1:2)
g = ke(3)
