disp('++++++++++++++++++++++++++++++')
disp('��� 2.6 (1)')
disp('�i����̊֐� ''ctrb_ss'', ''obsv_ss'' �𗘗p')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �`�B�֐��\�� y(s) = P(s)*u(s) ------')
num_P = 1;
den_P = [1 2 3];
tf_P  = tf(num_P,den_P)

[Ac,bc,cc] = ctrb_ss(num_P,den_P)
[Ao,bo,co] = obsv_ss(num_P,den_P)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 2.6 (2)')
disp('�i����̊֐� ''ctrb_ss'', ''obsv_ss'' �𗘗p')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �`�B�֐��\�� y(s) = P(s)*u(s) ------')
num_P = 4*[1 2];
den_P = [1 3 4 2];
tf_P  = tf(num_P,den_P)

[Ac,bc,cc] = ctrb_ss(num_P,den_P)
[Ao,bo,co] = obsv_ss(num_P,den_P)
