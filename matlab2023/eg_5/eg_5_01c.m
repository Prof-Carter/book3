disp('++++++++++++++++++++++++++++++')
disp('�� 5.1�i�A�b�J�[�}���̋ɔz�u�A���S���Y���F')
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
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -2+2j
      -2-2j
      -2+j
      -2-j ]

disp(' ')
disp('--- u(t) = k*x(t) + h*yref ------')
k = - acker(A,b,p)

M0 = [ A  b
       c  0 ];
h = [ -k  1 ]*inv(M0)*[ zeros(4,1)
                           1      ]

disp(' ')
disp('--- A + b*k �̌ŗL�l ---------')
eig(A + b*k)
