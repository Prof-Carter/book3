disp('++++++++++++++++++++++++++++++')
disp('��� 5.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1 
     -2  3 ];
b = [ 0
      1 ];
c = [ 1  0 ];

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


