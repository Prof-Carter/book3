disp('++++++++++++++++++++++++++++++')
disp('–â‘è 2.2 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms z1 dz1 ddz1 z2 dz2 ddz2 u real
syms M1 M2 k mu positive
syms xb1 xb2 xb3 xb4 dxb2 dxb4 real

dxb1 = xb2;
dxb3 = xb4;

disp(' ')
disp('--- ‰^“®•û’öŽ® ------')
eq1 = M1*ddz1 == u - k*(z1 - z2) - mu*(dz1 - dz2)
eq2 = M2*ddz2 ==     k*(z1 - z2) + mu*(dz1 - dz2)

eq1 = subs(eq1,  z1, xb1);
eq1 = subs(eq1, dz1, xb2);
eq1 = subs(eq1,  z2, xb1- xb3);
eq1 = subs(eq1, dz2, xb2- xb4);
eq1 = subs(eq1,ddz1,dxb2);
eq1 = subs(eq1,ddz2,dxb2-dxb4);

eq2 = subs(eq2,  z1, xb1);
eq2 = subs(eq2, dz1, xb2);
eq2 = subs(eq2,  z2, xb1- xb3);
eq2 = subs(eq2, dz2, xb2- xb4);
eq2 = subs(eq2,ddz1,dxb2);
eq2 = subs(eq2,ddz2,dxb2-dxb4);

[dxb2 dxb4] = solve(eq1,eq2,{dxb2,dxb4});

disp(' ')
disp('--- dxb(t)/dt ------')
dxb = [ dxb1
        dxb2
        dxb3
        dxb4 ]

disp(' ')
disp('--- y(t) ------')
y = z2

disp(' ')
disp('--- y(t) ------')
y = subs(y,  z1, xb1);
y = subs(y, dz1, xb2);
y = subs(y,  z2, xb1- xb3);
y = subs(y, dz2, xb2- xb4)

disp(' ')
disp('--- dxb(t)/dt = Ab*xb(t) + bb*u(t) ------')
disp('---      y(t) = cb*xb(t)           ------')
Ab = [ diff(dxb,xb1) diff(dxb,xb2) diff(dxb,xb3) diff(dxb,xb4) ]
bb =   diff(dxb,u)
cb = [ diff(  y,xb1) diff(  y,xb2) diff(  y,xb3) diff(  y,xb4) ]

disp(' ')
disp('--- M1 = 0.5, M2 = 1, k = 2, mu = 1 ‚Ì‚Æ‚« ------')

Ab = subs(Ab,{M1,M2,k,mu},{0.5,1,2,1})
bb = subs(bb,{M1,M2,k,mu},{0.5,1,2,1})
cb = subs(cb,{M1,M2,k,mu},{0.5,1,2,1})
