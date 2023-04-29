disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -2
      1 -2 ];

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
P = lyap(A',eye(n))

% �V���x�X�^�[�̏����ɂ�� P �̐��萫�𔻕�
flag = 1;
for i = 1:n
    if det(P(1:i,1:i)) < 0  % ������s�񎮂̕����̃`�F�b�N
        flag = 0;
        break
    end
end

if flag == 1
    disp('�V���x�X�^�[�̏������ P > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('�V���x�X�^�[�̏������ P > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end




disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0
      0  0  1
     -1 -3 -3 ];

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
P = lyap(A',eye(n))

% �V���x�X�^�[�̏����ɂ�� P �̐��萫�𔻕�
flag = 1;
for i = 1:n
    if det(P(1:i,1:i)) < 0  % ������s�񎮂̕����̃`�F�b�N
        flag = 0;
        break
    end
end

if flag == 1
    disp('�V���x�X�^�[�̏������ P > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('�V���x�X�^�[�̏������ P > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
      4  3 ];

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
P = lyap(A',eye(n))

flag = 1;
% �V���x�X�^�[�̏����ɂ�� P �̐��萫�𔻕�;
for i = 1:n
    if det(P(1:i,1:i)) < 0  % ������s�񎮂̕����̃`�F�b�N
        flag = 0;
        break
    end
end

if flag == 1
    disp('�V���x�X�^�[�̏������ P > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('�V���x�X�^�[�̏������ P > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end
