disp('++++++++++++++++++++++++++++++')
disp('問題 7.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms x1 x2 dx1 dx2 real

A  = [ 0 -5
       1 -2 ];
x = [ x1
      x2 ];

disp(' ')
disp('--- dx(t)/dt = A*x(t) ---------')
dx = A*x

disp(' ')
disp('--- φ(x(t)) ---------')
P = (1/2)*[ 1 -1
           -1  3 ];
phi = x'*P*x
phi = simplify(phi)

disp(' ')
disp('--- φ(x(t))：x1 について平方完成 ---------')
% phi = a*x1^2 + b*x1 + c
a = diff(phi,x1,2)/2;
b = subs(diff(phi,x1),x1,0);
c = phi - (a*x1^2 + b*x1);

h = - b/(2*a);
k = c - b^2/(4*a);
phi = a*(x1 - h)^2 + k  % 平方完成

disp(' ')
disp('--- dφ(x(t))/dt ---------')
% 合成関数の微分 dφ(x(t))/dt = ∂φ(x(t))∂x1(t)*dx1(t)/dt + ∂φ(x(t))∂x2(t)*dx2(t)/dt
dphi = diff(phi,x1)*dx1 + diff(phi,x2)*dx2; 

% 上で計算した dx(t)/dt = A*x(t) を代入
dphi = subs(dphi,{dx1,dx2},{dx(1),dx(2)});
dphi = simplify(dphi)
