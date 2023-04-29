disp('++++++++++++++++++++++++++++++')
disp('��� 6.3 (1)�i���l�v�Z�F�֐� ''acker''�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0   1
      0 -10 ];
b = [  0
      10 ];
c = [ 1  0 ];


disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,c)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end


disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -8+2j
      -8-2j ]

disp(' ')
disp('--- �I�u�U�[�o�Q�C�� l = [ l1')
disp('                          l2 ] ---------')
Ad = A';
bd = c';
kd = - acker(Ad,bd,p);

l = kd'

disp(' ')
disp('--- A + l*c �̌ŗL�l ---------')
eig(A + l*c)


disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -16+2j
      -16-2j ]

disp(' ')
disp('--- �I�u�U�[�o�Q�C�� l = [ l1')
disp('                          l2 ] ---------')
Ad = A';
bd = c';
kd = - acker(Ad,bd,p);

l = kd'

disp(' ')
disp('--- A + l*c �̌ŗL�l ---------')
eig(A + l*c)
