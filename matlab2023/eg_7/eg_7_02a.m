disp('++++++++++++++++++++++++++++++')
disp('�� 7.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -5
      1 -2 ]

disp(' ')
disp('--- A �̌ŗL�l ---------')
lambda = eig(A)

if real(lambda) < 0
    disp('A �̌ŗL�l�̎��������ׂĕ��Ȃ̂ŁC�Q�߈���ł���')
else
    disp('A �̌ŗL�l�Ɏ��������̂��̂��܂܂��̂ŁC�Q�߈���ł͂Ȃ�')
end

disp(' ')
disp('--- ���A�v�m�t�������̑Ώ̉� P ---------')
n = length(A);
Q = eye(n)
P = lyap(A',Q)

%  P �̌ŗL�l�����ׂĐ��ł��邩�ǂ����Ő��萫�𔻕�
disp(' ')
disp('--- P �̌ŗL�l ---------')
eig_P = eig(P)

if eig_P > 0
    disp('(a) P �̌ŗL�l�͂��ׂĐ��ł���CP > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('(a) P �̌ŗL�l�ɂ͕��̂��̂��܂܂�CP > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end

% �V���x�X�^�[�̏����ɂ�� P �̐��萫�𔻕�
flag = 1;
for i = 1:n
    if det(P(1:i,1:i)) < 0  % ������s�񎮂̕����̃`�F�b�N
        flag = 0;
        break
    end
end

disp(' ')
if flag == 1
    disp('(b) �V���x�X�^�[�̏������ P > 0 �Ȃ̂ŁC�Q�߈���ł���')
    for i = 1:n
        fprintf('������s�񎮁Fi = %d\n',i)
        det(P(1:i,1:i))
    end
else
    disp('(b) �V���x�X�^�[�̏������ P > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end