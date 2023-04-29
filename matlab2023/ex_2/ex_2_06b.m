disp('++++++++++++++++++++++++++++++')
disp('問題 2.6 (1)')
disp('（自作の関数 ''ctrb_ss'', ''obsv_ss'' を利用')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 伝達関数表現 y(s) = P(s)*u(s) ------')
num_P = 1;
den_P = [1 2 3];
tf_P  = tf(num_P,den_P)

[Ac,bc,cc] = ctrb_ss(num_P,den_P)
[Ao,bo,co] = obsv_ss(num_P,den_P)


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 2.6 (2)')
disp('（自作の関数 ''ctrb_ss'', ''obsv_ss'' を利用')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 伝達関数表現 y(s) = P(s)*u(s) ------')
num_P = 4*[1 2];
den_P = [1 3 4 2];
tf_P  = tf(num_P,den_P)

[Ac,bc,cc] = ctrb_ss(num_P,den_P)
[Ao,bo,co] = obsv_ss(num_P,den_P)
