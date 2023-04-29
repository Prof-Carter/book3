disp('++++++++++++++++++++++++++++++')
disp('–â‘è 6.2')
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
disp('--- ‰Â§Œäs—ñ Vc ---------')
Vc = ctrb(A,B)
% Vc = [ B  A*B  A^2*B ]

disp(' ')
disp('--- rank(Vc) ---------')
rank_Vc = rank(Vc)

n = length(A);
if rank_Vc == n
    disp('‰Â§Œä‚Å‚ ‚é')
else
    disp('‰Â§Œä‚Å‚Í‚È‚¢')
end

disp(' ')
disp('--- ‰ÂŠÏ‘ªs—ñ Vo ---------')
Vo = obsv(A,C)
% Vo = [  C
%        C*A
%        C*A^2 ]

disp(' ')
disp('--- rank(Vo) ---------')
rank_Vo = rank(Vo)

n = length(A);
if rank_Vo == n
    disp('‰ÂŠÏ‘ª‚Å‚ ‚é')
else
    disp('‰ÂŠÏ‘ª‚Å‚Í‚È‚¢')
end
