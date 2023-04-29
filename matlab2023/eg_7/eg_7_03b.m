disp('++++++++++++++++++++++++++++++')
disp('例 7.3（つづき）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

syms x1 x2 dx1 dx2 real

A = [ 0 -5
      1 -2 ];
x = [ x1
      x2 ];

x0 = [ 1
       0 ];

disp(' ')
disp('--- dx(t)/dt = A*x(t) ---------')
dx = A*x

Qo = [ 0  1 ]
Q = Qo'*Qo
P = lyap(A',Q);
P = clean(P,1e-6)   %% 1e-6 以下の係数は無視

disp(' ')
disp('--- φ(x(t)) ---------')
phi = x'*P*x

disp(' ')
disp('--- dφ(x(t))/dt ---------')
% 合成関数の微分 dφ(x(t))/dt = ∂φ(x(t))∂x1(t)*dx1(t)/dt + ∂φ(x(t))∂x2(t)*dx2(t)/dt
dphi = diff(phi,x1)*dx1 + diff(phi,x2)*dx2; 

% 上で計算した dx(t)/dt = A*x(t) を代入
dphi = subs(dphi,{dx1,dx2},{dx(1),dx(2)});
dphi = simplify(dphi)

% --------------------------------------------
% --------------------------------------------
syms s

disp(' ')
disp('--- 遷移行列 ---------')
exp_At = ilaplace(inv(s*eye(2) - A))

disp(' ')
disp('--- x0 = [ 1')
disp('           0 ] とした時の x(t) ---------')
xt = exp_At*x0

disp(' ')
disp('--- φ(t) ---------')
phit = subs(phi,{x1,x2},{xt(1),xt(2)});
phit = simplify(phit)

disp(' ')
disp('--- dφ(t)/dt ---------')
dphit = subs(dphi,{x1,x2},{xt(1),xt(2)});
dphit = simplify(dphit)

disp(' ')
disp('--- Qo*x(t) ---------')
Qo*xt

% --------------------------------------------
t = 0:0.001:4;

figure(1)

plot(t,subs(xt(1),t),'LineWidth',1.5)
hold on
plot(t,subs(xt(2),t),'--','LineWidth',1.5)
hold off
ylim([-0.5 1])
set(gca,'YTick',[-0.5:0.5:1])

legend('{x}_{1}(t)','{x}_{2}(t)')
set(legend,'FontName','Arial','FontSize',20)

ylabel('{x}_{1}(t), {x}_{2}(t)','FontName','Arial','FontSize',22)

movegui('northwest')

% --------------------------------------------
figure(2)

plot(t,subs(phit,t),'LineWidth',1.5)
hold on
plot(t,subs(dphit,t),'--','LineWidth',1.5)
hold off

ylim([-0.1 0.05])
set(gca,'YTick',[-0.1:0.05:0.05])

legend('\phi(x(t))','d\phi(x(t))/dt')
set(legend,'FontName','Arial','FontSize',20)

ylabel('\phi(t), d\phi(t)/dt','FontName','Arial','FontSize',22)

movegui('northeast')

% --------------------------------------------
for i = 1:2
    figure(i)

    grid
    xlim([0 4])
    set(gca,'XTick',[0:1:4])
    set(gca,'FontName','Arial','FontSize',20)

    xlabel('t [s]','FontName','Arial','FontSize',22)
end


