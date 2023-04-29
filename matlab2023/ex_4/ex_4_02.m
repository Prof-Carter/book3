disp('++++++++++++++++++++++++++++++')
disp('問題 4.2(1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  1
     -2 -3  1
      0  0  1 ];
B = [ 0  1
      1  0
      0  0 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- Vc のランク ---------')
rank_Vc = rank(Vc)

n = length(A)
if rank_Vc == n
    disp('可制御である')
else
    disp('可制御ではない')
end

% ++++++++++++++++++++++++++++++++++++++++++++++
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 4.2(2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  1
     -2 -3  1
      1  0  0 ];
B = [ 0  1
      1  0
      0  0 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- Vc のランク ---------')
rank_Vc = rank(Vc)

n = length(A)
if rank_Vc == n
    disp('可制御である')
else
    disp('可制御ではない')
end
