disp('++++++++++++++++++++++++++++++')
disp('��� 4.1 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -2 -3 ];
b = [ 1
      0 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

n = length(A);
if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end


% ++++++++++++++++++++++++++++++++++++++++++++++
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 4.1 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 1  0
     -2 -3 ];
b = [ 0
      1 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

n = length(A);
if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end



