disp('++++++++++++++++++++++++++++++')
disp('問題 6.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0
      0  0  1
      2 -1  0 ];
B = [ 0  0
      1  0
      0  1 ];
C = [ 1 -1  0
      1  0  0 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,B)
% Vc = [ B  A*B  A^2*B ]

disp(' ')
disp('--- rank(Vc) ---------')
rank_Vc = rank(Vc)

n = length(A);
if rank_Vc == n
    disp('可制御である')
else
    disp('可制御ではない')
end

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,C)
% Vo = [  C
%        C*A
%        C*A^2 ]

disp(' ')
disp('--- rank(Vo) ---------')
rank_Vo = rank(Vo)

n = length(A);
if rank_Vo == n
    disp('可観測である')
else
    disp('可観測ではない')
end
