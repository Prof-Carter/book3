disp('++++++++++++++++++++++++++++++')
disp('��� 4.2(1)')
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
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- Vc �̃����N ---------')
rank_Vc = rank(Vc)

n = length(A)
if rank_Vc == n
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end

% ++++++++++++++++++++++++++++++++++++++++++++++
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 4.2(2)')
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
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,B)

disp(' ')
disp('--- Vc �̃����N ---------')
rank_Vc = rank(Vc)

n = length(A)
if rank_Vc == n
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end
