disp('++++++++++++++++++++++++++++++')
disp('��� 6.1 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  -1 
     -1   0 ];
b = [ 1
      1 ];
c = [ 0  1 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end

disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 6.1 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0
      0  0  1
     -2  1 -1 ];
b = [ 0
      0
      1 ];
c = [ 1  0  0 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b  A^2*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end

disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A
%        c*A^2 ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 6.1 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -1  0 
       1 -1 ];
b = [ 1
      0 ];
c = [ 2  0 ];

disp(' ')
disp('--- ����s�� Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('����ł���')
else
    disp('����ł͂Ȃ�')
end

disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end
