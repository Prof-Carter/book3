disp('++++++++++++++++++++++++++++++')
disp('問題 2.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms J mu M g l positive
syms x1 x2 u real
disp(' ')
disp('--- dx(t)/dt = f(x(t)) + G*u(t) ------')

fx = [ x2
       -(M*g*l/J)*sin(x1)-(mu/J)*x2 ]
G = [ 0
       1/J ]

disp(' ')
disp('--- x1(t) = 5π/6 で静止したときの x2(t), u(t) の平衡点 x2e, ue ------')
x1e = sym(5*pi/6)
eq  = subs(fx + G*u, x1, x1e) == 0
[ue x2e] = solve(eq, {u, x2})

disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 2.3 (2)')
disp('++++++++++++++++++++++++++++++')
disp(' ')
disp('--- df(x)/dx ------')
dfx = [ diff(fx,x1)  diff(fx,x2) ] 

disp(' ')
disp('--- A = df(xe)/dx ------')
A = subs(dfx,{x1,x2},{x1e,x2e})

disp(' ')
disp('--- b = G ------')
b = G



