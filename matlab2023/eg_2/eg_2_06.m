disp('++++++++++++++++++++++++++++++')
disp('�� 2.6')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms J mu M g l positive
syms x1 x2 u real
syms x1e real

disp(' ')
disp('--- dx(t)/dt = f(x(t)) + G*u(t) ------')

fx = [ x2
       -(M*g*l/J)*sin(x1)-(mu/J)*x2 ]
G = [ 0
       1/J ]

disp(' ')
disp('--- x1(t) = x1e �ŐÎ~�����Ƃ��� x2(t), u(t) �̕��t�_ x2e, ue ------')
eq = subs(fx + G*u, x1, x1e);
[ue x2e] = solve(eq, {u, x2})

disp(' ')
disp('--- df(x)/dx ------')
dfx = [ diff(fx,x1)  diff(fx,x2) ] 

disp(' ')
disp('--- A = df(xe)/dx ------')
A = subs(dfx,{x1,x2},{x1e,x2e})

disp(' ')
disp('--- b = G ------')
b = G

disp(' ')
disp('--- x1e = ��/3 �̂Ƃ��� A, ue ------')
A = subs(A, x1e, pi/3)
ue  = subs(ue,  x1e, pi/3)

