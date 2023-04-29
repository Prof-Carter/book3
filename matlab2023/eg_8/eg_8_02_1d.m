disp('++++++++++++++++++++++++++++++')
disp('例 8.2 (1)（つづき：シミュレーション結果の描画）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];

Q = diag([ 300  60 ]);
R = 1;

K = - lqr(A,B,Q,R);

p = [ -1+2j
      -1-2j ];
K_p = - acker(A,B,p);

x0 = [ 1
       0 ];

syms s
Acl  = A + B*K;
Acl_p = A + B*K_p;

disp(' ')
disp('--- x(t) = exp((A + B*K)*t)*x0 --------');
xt   = ilaplace(inv(s*eye(2) - Acl  ))*x0
xt_p = ilaplace(inv(s*eye(2) - Acl_p))*x0

disp(' ')
disp('--- u(t) = K*x(t) --------');
ut   = K*xt
ut_p = K_p*xt_p

t = 0:0.001:4;
x1 = subs(xt(1),t);
x2 = subs(xt(2),t);
u  = subs(ut,t);

x1_p = subs(xt_p(1),t);
x2_p = subs(xt_p(2),t);
u_p  = subs(ut_p,t);

% -----------------------------------------
figure(1)
set(gcf,'position',[50 50 1200 750])

% -----------------------------------------
figure(1)
subplot(2,2,1)
plot(t,x1,'LineWidth',1.5)
hold on
plot(t,x1_p,'--','LineWidth',1.5)
hold off
xlim([0 4])
ylim([-0.5 1.5])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-0.5:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x1(t) [m]','FontName','Arial','FontSize',22)

legend('LQ','極配置')
set(legend,'FontName','MS UI Gothic','FontSize',20)

% -----------------------------------------
figure(1)
subplot(2,2,2)
plot(t,x2,'LineWidth',1.5)
hold on
plot(t,x2_p,'--','LineWidth',1.5)
hold off
xlim([0 4])
ylim([-2.4 0.8])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-2.4:0.8:0.8])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x2(t) [m/s]','FontName','Arial','FontSize',22)

% -----------------------------------------
figure(1)
subplot(2,2,3)
plot(t,u,'LineWidth',1.5)
hold on
plot(t,u_p,'--','LineWidth',1.5)
hold off
xlim([0 4])
ylim([-12 12])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-12:6:12])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('u(t) [N]','FontName','Arial','FontSize',22)



