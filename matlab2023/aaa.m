disp('++++++++++++++++++++++++++++++')
disp('ó· 2.1, 2.2')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

M = 0.390;
J = 0.0712;
l = 0.204;
c = 0.695;
g = 9.81;

for u = [0.25 0.5 1 2]
    sim('eg_2_01_02_R2018a',10);    % R2018a à»ç~
    % sim('eg_2_01_02_R2020a',10);    % R2020a à»ç~
    % sim('eg_2_01_02_R2023a',10);    % R2023a à»ç~
    
    figure(1);
    plot(t,y1,'LineWidth',1.5);
    hold on

    figure(2);
    plot(t,y2,'LineWidth',1.5);
    hold on
end

for i = 1:2
    figure(i)
    hold off
    grid

    xlim([0 10])
    ylim([0 3*pi])

    set(gca,'XTick',[0:2:10])
    set(gca,'YTick',[0:pi/2:3*pi])
    set(gca,'YTickLabel',{'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi'})
    set(gca,'FontName','Arial','FontSize',20)

    xlabel('time [s]','FontName','Arial','FontSize',22)
    ylabel('angle [rad]','FontName','Arial','FontSize',22)
end

figure(1); movegui('northwest')
figure(2); movegui('northeast')


disp('++++++++++++++++++++++++++++++')
disp('ó· 2.5')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms L R C positive

disp(' ')
disp('________________________________________________________________')
disp('x(t) = [vC(t) dvC(t)/dt]'' ÇÃÇ∆Ç´')

syms u i di int_i real
syms x1 x2 dx2 real

dx1 = x2;

disp(' ')
disp('--- âÒòHï˚íˆéÆ ------')
eq = u == L*di + R*i + (1/C)*int_i

eq = subs(eq,int_i,C*x1);
eq = subs(eq,i,    C*x2);
eq = subs(eq,di,   C*dx2);

dx2 = solve(eq,dx2);

disp(' ')
disp('--- dx(t)/dt ------')
dx = [ dx1
       dx2 ]

disp(' ')
disp('--- y(t) ------')
y = (1/C)*int_i

y = subs(y,int_i,C*x1);
y = subs(y,i,    C*x2);

disp(' ')
disp('--- dx(t)/dt = A*x(t) + b*u(t) ------')
disp('---     y(t) = c*x(t)          ------')
A = [ diff(dx,x1) diff(dx,x2) ]
b =   diff(dx,u)
c = [ diff( y,x1) diff( y,x2) ]


disp(' ')
disp('________________________________________________________________')
disp('xb(t) = [q(t) dq(t)/dt]'' ÇÃÇ∆Ç´')

syms u q dq ddq  
syms xb1 xb2 dxb2 real

dxb1 = xb2;

disp(' ')
disp('--- âÒòHï˚íˆéÆ ------')
eq2 = u - (L*ddq + R*dq + (1/C)*q)

eq2 = subs(eq2,  q, xb1);
eq2 = subs(eq2, dq, xb2);
eq2 = subs(eq2,ddq,dxb2);

dxb2 = solve(eq2,dxb2);

disp(' ')
disp('--- dxb(t)/dt ------')
dxb = [ dxb1
        dxb2 ]

disp(' ')
disp('--- y(t) ------')
y = (1/C)*q

y = subs(y,  q, xb1);
y = subs(y, dq, xb2);

disp(' ')
disp('--- dxb(t)/dt = Ab*xb(t) + bb*u(t) ------')
disp('---      y(t) = cb*xb(t)           ------')
Ab = [ diff(dxb,xb1) diff(dxb,xb2) ]
bb =   diff(dxb,u)
cb = [ diff(  y,xb1) diff(  y,xb2) ]

disp(' ')
disp('________________________________________________________________')
disp('ìØílïœä∑ xb(t) = T*x(t)')
xb = [ q
      dq ];

xb = subs(xb,{q,dq},{int_i,i});
xb = subs(xb,{int_i,i},{C*x1,C*x2});

disp(' ')
disp('--- ïœä∑çsóÒ T ------')
T = [ diff(xb,x1) diff(xb,x2) ]

disp(' ')
disp('--- Ab = T*A*inv(A) ------')
T*A*inv(T)

disp(' ')
disp('--- bb = T*b ------')
T*b

disp(' ')
disp('--- cb = c*inv(A) ------')
c*inv(T)
