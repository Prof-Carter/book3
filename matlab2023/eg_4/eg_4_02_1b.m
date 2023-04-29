disp('++++++++++++++++++++++++++++++')
disp('例 4.2 (1)（可制御性グラミアン）')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -3   1
       2  -2 ];
B = [ 2
      0 ];

syms t tau tf real

disp(' ')
disp('--- 遷移行列 exp(A*t) -----------------')
exp_At = expm(A*t)

disp(' ')
disp('--- 可制御性グラミアン Wc(tf) -----------------')
Wc_tf = int(expm(-A*tau)*B*(expm(-A*tau)*B)',0,tf)
