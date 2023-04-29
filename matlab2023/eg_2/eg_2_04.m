disp('++++++++++++++++++++++++++++++')
disp('—á 2.4')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms z1 dz1 ddz1 z2 dz2 ddz2 u real
syms M1 M2 k mu positive
syms x1 x2 x3 x4 dx2 dx4 real

dx1 = x2;
dx3 = x4;

disp(' ')
disp('--- ‰^“®•û’öŽ® ------')
eq1 = M1*ddz1 == u - k*(z1 - z2) - mu*(dz1 - dz2)
eq2 = M2*ddz2 ==     k*(z1 - z2) + mu*(dz1 - dz2)

eq1 = subs(eq1,  z1, x1);
eq1 = subs(eq1, dz1, x2);
eq1 = subs(eq1,  z2, x3);
eq1 = subs(eq1, dz2, x4);
eq1 = subs(eq1,ddz1,dx2);
eq1 = subs(eq1,ddz2,dx4);

eq2 = subs(eq2,  z1, x1);
eq2 = subs(eq2, dz1, x2);
eq2 = subs(eq2,  z2, x3);
eq2 = subs(eq2, dz2, x4);
eq2 = subs(eq2,ddz1,dx2);
eq2 = subs(eq2,ddz2,dx4);

[dx2 dx4] = solve(eq1,eq2,{dx2,dx4});

disp(' ')
disp('--- dx(t)/dt ------')
dx = [ dx1
       dx2
       dx3
       dx4 ]

disp(' ')
disp('--- y(t) ------')
y = z2

disp(' ')
disp('--- y(t) ------')
y = subs(y,  z1, x1);
y = subs(y, dz1, x2);
y = subs(y,  z2, x3);
y = subs(y, dz2, x4)

disp(' ')
disp('--- dx(t)/dt = A*x(t) + b*u(t) ------')
disp('---     y(t) = c*x(t)          ------')
A = [ diff(dx,x1) diff(dx,x2) diff(dx,x3) diff(dx,x4) ]
b =   diff(dx,u)
c = [ diff(y,x1)  diff(y,x2)  diff(y,x3)  diff(y,x4) ]

disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 ‚Ì‚Æ‚« ------')

A = subs(A,{M1,M2,k,mu},{0.5,1,2,1})
b = subs(b,{M1,M2,k,mu},{0.5,1,2,1})
c = subs(c,{M1,M2,k,mu},{0.5,1,2,1})
