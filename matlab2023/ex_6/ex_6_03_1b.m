disp('++++++++++++++++++++++++++++++')
disp('��� 6.3 (1)')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('(b) �A�b�J�[�}���̋ɔz�u�A���S���Y��')

clear
format compact

A = [ 0  -1 
     -1   0 ];
b = [ 1
      1 ];
c = [ 0  1 ];

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
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ -5
      -5 ]

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
