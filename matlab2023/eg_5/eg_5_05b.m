disp('++++++++++++++++++++++++++++++')
disp('�� 5.5�i�A�b�J�[�}���̋ɔz�u�A���S���Y���F')
disp('�@�@�@�@�֐� ''acker'' �𗘗p�������l�v�Z�j')
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
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -1+3j
      -1-3j
      -2+j
      -2-j
      -2 ]

disp(' ')
disp('--- u(t) = ke*xe(t) ---------')
ke = -acker(Ae,be,p)

disp(' ')
disp('--- Ae + be*ke �̌ŗL�l ---------')
eig(Ae + be*ke)

disp(' ')
disp('--- u(t) = ke*xe(t) = k*x(t) + g*w(t) ---------')
k = ke(1:4)
g = ke(5)
