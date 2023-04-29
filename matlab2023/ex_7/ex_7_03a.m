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

%  P �̌ŗL�l�����ׂĐ��ł��邩�ǂ����Ő��萫�𔻕�
disp(' ')
disp('--- P �̌ŗL�l ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P �̌ŗL�l�͂��ׂĐ��ł���CP > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('P �̌ŗL�l�ɂ͕��̂��̂��܂܂�CP > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
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

%  P �̌ŗL�l�����ׂĐ��ł��邩�ǂ����Ő��萫�𔻕�
disp(' ')
disp('--- P �̌ŗL�l ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P �̌ŗL�l�͂��ׂĐ��ł���CP > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('P �̌ŗL�l�ɂ͕��̂��̂��܂܂�CP > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
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

%  P �̌ŗL�l�����ׂĐ��ł��邩�ǂ����Ő��萫�𔻕�
disp(' ')
disp('--- P �̌ŗL�l ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P �̌ŗL�l�͂��ׂĐ��ł���CP > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('P �̌ŗL�l�ɂ͕��̂��̂��܂܂�CP > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end
