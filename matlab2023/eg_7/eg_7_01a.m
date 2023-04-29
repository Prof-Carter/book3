disp('++++++++++++++++++++++++++++++')
disp('例 7.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms x1 x2 dx1 dx2 real
syms J mu M g l positive

x = [ x1
      x2 ];

disp(' ')
disp('--- dx(t)/dt = f(t) ---------')
dx = [ x2
      -(M*g*l/J)*sin(x1)-mu/J*x2 ]

disp(' ')
disp('--- φ(x(t)) ---------')
phi = (1/2)*J*x2^2 + M*g*l*(1 - cos(x1))

disp(' ')
disp('--- dφ(x(t))/dt ---------')
dphi = diff(phi,x1)*dx1 + diff(phi,x2)*dx2
dphi = subs(dphi,{dx1,dx2},{dx(1),dx(2)});
dphi = simplify(dphi)