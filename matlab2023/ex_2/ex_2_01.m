disp('++++++++++++++++++++++++++++++')
disp('–â‘è 2.1')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms y dy ddy u real
syms M mu k positive
syms x1 x2 dx2 real

dx1 = x2;

disp(' ')
disp('--- ‰^“®•û’öŽ® ------')
eq = M*ddy == u - k*y - mu*dy    % ---> M*ddy = u - k*y - mu*dy
eq = subs(eq,  y, x1);
eq = subs(eq, dy, x2);
eq = subs(eq,ddy,dx2);

dx2 = solve(eq,dx2);

disp(' ')
disp('--- dx(t)/dt ------')
dx = [ dx1
       dx2 ]

disp(' ')
disp('--- y(t) ------')
y = x1

disp(' ')
disp('--- dx(t)/dt = A*x(t) + B*u(t) ------')
A = [ diff(dx,x1) diff(dx,x2) ]
b =   diff(dx,u)
c = [ diff( y,x1) diff( y,x2) ]

