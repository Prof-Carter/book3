disp('++++++++++++++++++++++++++++++')
disp('問題 7.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms x1 x2 dx1 dx2 real
syms M k mu positive

A = [  0      1
     -k/M  -mu/M ];
x = [ x1
      x2 ];

disp(' ')
disp('--- dx(t)/dt = A*x(t) ---------')
dx = A*x

disp(' ')
disp('--- φ(x(t)) ---------')
phi = (1/2)*M*x2^2 + (1/2)*k*x1^2

disp(' ')
disp('--- dφ(x(t))/dt ---------')
dphi = diff(phi,x1)*dx1 + diff(phi,x2)*dx2
dphi = subs(dphi,{dx1,dx2},{dx(1),dx(2)});
dphi = simplify(dphi)