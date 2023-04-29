disp('++++++++++++++++++++++++++++++')
disp('��� 7.4 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms x1 x2 dx1 dx2 real

A = [ 0 -2
      1 -2 ];
x = [ x1
      x2 ];

x0 = [ 1
       0 ];

disp(' ')
disp('--- dx(t)/dt = A*x(t) ---------')
dx = A*x

Qo = [ 1  0 ]
Q = Qo'*Qo
P = lyap(A',Q)

disp(' ')
disp('--- ��(x(t)) ---------')
phi = x'*P*x

disp(' ')
disp('--- d��(x(t))/dt ---------')
% �����֐��̔��� d��(x(t))/dt = �݃�(x(t))��x1(t)*dx1(t)/dt + �݃�(x(t))��x2(t)*dx2(t)/dt
dphi = diff(phi,x1)*dx1 + diff(phi,x2)*dx2; 

% ��Ōv�Z���� dx(t)/dt = A*x(t) ����
dphi = subs(dphi,{dx1,dx2},{dx(1),dx(2)});
dphi = simplify(dphi)


syms s

disp(' ')
disp('--- �J�ڍs�� ---------')
exp_At = ilaplace(inv(s*eye(2) - A))

disp(' ')
disp('--- x0 = [ 1')
disp('           0 ] �Ƃ������� x(t) ---------')
xt = exp_At*x0

disp(' ')
disp('--- ��(t) ---------')
phit = subs(phi,{x1,x2},{xt(1),xt(2)});
phit = simplify(phit)

disp(' ')
disp('--- d��(t)/dt ---------')
dphit = subs(dphi,{x1,x2},{xt(1),xt(2)});
dphit = simplify(dphit)

disp(' ')
disp('--- Qo*x(t) ---------')
Qo*xt
