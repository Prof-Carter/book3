disp('++++++++++++++++++++++++++++++')
disp('�� 5.6')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];

disp(' ')
disp('*** �����@ **************************')
disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end

disp(' ')
disp('*** �����A **************************')
disp(' ')
disp('--- M0 ---------')
M0 = [ A  b
       c  0 ]

disp(' ')
disp('--- |M0| ---------')
det_M0 = det(M0)

n = length(A);
if det_Vc ~= 0
    disp('�����ł���')
else
    disp('�����ł͂Ȃ�')
end


