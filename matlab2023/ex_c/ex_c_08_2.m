disp('++++++++++++++++++++++++++++++')
disp('��� C.8 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

n = length(P);

% �V���x�X�^�[�̏����ɂ�� P �̐��萫�𔻕�
flag = 1;
for i = 1:n
    disp(' ')
    disp('--- ������s�񎮂̍s�� ------')
    i
    det(P(1:i,1:i))

    if det(P(1:i,1:i)) < 0  % ������s�񎮂̕����̃`�F�b�N
        flag = 0;
        break
    end
end

disp(' ')
if flag == 1
    disp('�V���x�X�^�[�̏������ P > 0 �Ȃ̂ŁC�Q�߈���ł���')
else
    disp('�V���x�X�^�[�̏������ P > 0 �ł͂Ȃ��̂ŁC�Q�߈���ł͂Ȃ�')
end
