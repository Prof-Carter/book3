disp('++++++++++++++++++++++++++++++')
disp('��� 2.2 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- �� 2.4 �œ���ꂽ��ԋ�ԕ\�� ------')
disp('--- dx(t)/dt = A*x(t) + b*u(t)  ------')
disp('---     y(t) = c*x(t)           ------')
A = [ 0   1   0   0
     -4  -2   4   2
      0   0   0   1
      2   1  -2  -1 ]
b = [ 0
      2
      0
      0 ]
c = [ 0   0   1   0 ]

disp(' ')
disp('--- ��� 2.2 (1) �œ���ꂽ��ԋ�ԕ\�� ------')
disp('--- dxb(t)/dt = Ab*xb(t) + bb*u(t)    ------')
disp('---      y(t) = cb*xb(t)              ------')
Ab = [ 0   1   0   0
       0   0  -4  -2
       0   0   0   1
       0   0  -6  -3 ]
bb = [ 0
       2
       0
       2 ]
cb = [ 1   0  -1   0 ]

% ----
syms z1 dz1 z2 dz2 real
syms x1 x2 x3 x4 real
disp(' ')
disp('________________________________________________________________')
disp('���l�ϊ� xb(t) = T*x(t)')
x = [ z1
     dz1
      z2
     dz2 ];
xb = [   z1
        dz1
       z1-z2
      dz1-dz2 ];

xb = subs(xb,{z1,dz1,z2,dz2},{x1,x2,x3,x4});

disp(' ')
disp('--- �ϊ��s�� T ------')
T = [ diff(xb,x1) diff(xb,x2) diff(xb,x3) diff(xb,x4) ]

disp(' ')
disp('--- T �̋t�s�� ------')
inv(T)

disp(' ')
disp('--- Ab = T*A*inv(A) ------')
T*A*inv(T)

disp(' ')
disp('--- bb = T*b ------')
T*b

disp(' ')
disp('--- cb = c*inv(A) ------')
c*inv(T)
