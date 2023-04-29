disp('++++++++++++++++++++++++++++++')
disp('問題 6.1 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  -1 
     -1   0 ];
b = [ 1
      1 ];
c = [ 0  1 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('可制御である')
else
    disp('可制御ではない')
end

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('可観測である')
else
    disp('可観測ではない')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 6.1 (2)')
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
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b  A^2*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('可制御である')
else
    disp('可制御ではない')
end

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A
%        c*A^2 ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('可観測である')
else
    disp('可観測ではない')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 6.1 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -1  0 
       1 -1 ];
b = [ 1
      0 ];
c = [ 2  0 ];

disp(' ')
disp('--- 可制御行列 Vc ---------')
Vc = ctrb(A,b)
% Vc = [ b  A*b ]

disp(' ')
disp('--- |Vc| ---------')
det_Vc = det(Vc)

if det_Vc ~= 0
    disp('可制御である')
else
    disp('可制御ではない')
end

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,c)
% Vo = [  c
%        c*A ]

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('可観測である')
else
    disp('可観測ではない')
end
