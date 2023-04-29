disp('++++++++++++++++++++++++++++++')
disp('�� 1.2�i�����I���f���}�b�`���O�@�ɂ�� P-D �R���g���[���݌v�j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms kP kD real

disp(' ')
disp('___ �X�e�b�v 1 ____________________________________')
disp(' ')
disp('--- �`�B�֐� P(s) ------')
Ps = (2*s + 4)/(s^4 + 3*s^3 + 6*s^2)

disp(' ')
disp('--- T(s) = P(s)*kP/(1 + P(s)*(kD*s + kP)) ------')
Ts = Ps*kP/(1 + Ps*(kD*s + kP));
Ts = collect(Ts)

disp(' ')
disp('--- T(s) = NT(s)/DT(s) ------')
[NTs DTs] = numden(Ts)


disp(' ')
disp('___ �X�e�b�v 2 ____________________________________')

disp(' ')
disp('--- 1/T(s) = h0 + h1*s + h2*s^2 + ... ------')
h0 = collect(subs(1/Ts,s,0))                            % s = 0 �ɂ����� 1/T(s) �̃e�C���[�W�J�� 0 �����̌W��
h1 = collect(subs(diff(1/Ts,1,s)/factorial(1),s,0))     % s = 0 �ɂ����� 1/T(s) �̃e�C���[�W�J�� 1 �����̌W��
h2 = collect(subs(diff(1/Ts,2,s)/factorial(2),s,0))     % s = 0 �ɂ����� 1/T(s) �̃e�C���[�W�J�� 2 �����̌W��


disp(' ')
disp('___ �X�e�b�v 3 ____________________________________')

syms wn z positive

disp(' ')
disp('--- GM(s)�F2 ���x��v�f�̋K�̓��f�� ------')
GMs = wn^2/(s^2 + 2*z*wn*s + wn^2)

disp(' ')
disp('--- 1/GM(s) = hm0 + hm1*s + hm2*s^2 ------')
hm0 = collect(subs(1/GMs,s,0))
hm1 = collect(subs(diff(1/GMs,1,s)/factorial(1),s,0))
hm2 = collect(subs(diff(1/GMs,2,s)/factorial(2),s,0))

disp(' ')
disp('--- 1/T(s) �� 1/GM(s) �� 1 �����C2 ��������v����悤�� kP, kD ------')
[kD kP] = solve(h1==hm1,h2==hm2,{kD,kP})



