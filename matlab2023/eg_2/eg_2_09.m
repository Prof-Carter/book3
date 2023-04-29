disp('++++++++++++++++++++++++++++++')
disp('�� 2.9')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms J mu positive

disp(' ')
disp('--- �ŏ������ł͂Ȃ���ԋ�ԕ\���i2 ���V�X�e���j ------')
A = [ 0   1
      0 -mu/J ]
b = [ 0
     1/J ]
c = [ 0   1 ]

disp(' ')
disp('--- �`�B�֐��\���ւ̕ϊ� ------')
Ps = c*inv(s*eye(2) - A)*b;
Ps = collect(Ps)

disp(' ')
disp('--- �ŏ������̏�ԋ�ԕ\���i1 ���V�X�e���j ------')
A_min = - mu/J
b_min =    1/J
c_min =    1

disp(' ')
disp('--- �`�B�֐��\���ւ̕ϊ� ------')
Ps_min = c_min*inv(s*eye(1) - A_min)*b_min;
Ps_min = collect(Ps_min)