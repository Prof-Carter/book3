disp('++++++++++++++++++++++++++++++')
disp('例 4.3 (1)')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [ -3  1
       2 -2 ];
b = [ 2
      0 ];

syms k1 k2 real
syms p1 p2 s

k = [ k1  k2 ];

disp(' ')
disp('--- A + b*k の特性多項式 ---------')
det_A_bk = det(s*eye(2) - (A + b*k))

disp(' ')
disp('--- A + b*k の特性多項式：λ^2 + a1*λ + a0 ---------')
a0 = subs(det_A_bk, s, 0)
a1 = subs(diff(det_A_bk, s), s, 0)

disp(' ')
disp('--- 配置したい固有値の設定 ---------')
p = [ p1
      p2 ]

disp(' ')
disp('--- Δ(λ) = λ^2 + d1*λ + d0 ---------')
delta = (s - p(1))*(s - p(2))

d0 = subs(delta, s, 0)
d1 = subs(diff(delta, s), s, 0)

disp(' ')
disp('--- k = [k1 k2] ---------')
[k1 k2] = solve(a1==d1, a0==d0, {k1, k2})

k = [ k1  k2 ];
disp(' ')
disp('--- A + b*k の固有値 ---------')
eig(A + b*k)

% ------------------------------------------------------
disp(' ')
disp('--- 関数 ''ilaplace'' を利用 ---------')

syms s

t = 0:0.001:1;

x0 = [ 0
       1 ];

figure(1)
set(gcf,'position',[50 50 1200 750])

% ------------------------------------------------------
disp(' ')
disp('--- ①：p1 = -4+4j, p2 = -4-4j としたときの k = [k1 k2] ---------')
k_sim = subs(k,{p1,p2},{-4+4j,-4-4j});
sym(k_sim)

xt = ilaplace(inv(s*eye(2) - (A + b*k_sim)))*x0
ut = k_sim*xt

figure(1)
subplot(2,2,1)
plot(t,subs(xt(1),t),'--','LineWidth',1.5)
hold on

subplot(2,2,2)
plot(t,subs(xt(2),t),'--','LineWidth',1.5)
hold on

subplot(2,2,3)
plot(t,subs(ut,t),'--','LineWidth',1.5)
hold on

% ------------------------------------------------------
disp(' ')
disp('--- ②：p1 = -8+4j, p2 = -8-4j としたときの k = [k1 k2] ---------')
k_sim = subs(k,{p1,p2},{-8+4j,-8-4j});
sym(k_sim)

xt = ilaplace(inv(s*eye(2) - (A + b*k_sim)))*x0
ut = k_sim*xt

figure(1)
subplot(2,2,1)
plot(t,subs(xt(1),t),'LineWidth',1.5)
hold on

subplot(2,2,2)
plot(t,subs(xt(2),t),'LineWidth',1.5)
hold on

subplot(2,2,3)
plot(t,subs(ut,t),'LineWidth',1.5)
hold on

% ------------------------------------------------------
disp(' ')
disp('--- ③：p1 = -12+4j, p2 = -12-4j としたときの k = [k1 k2] ---------')
k_sim = subs(k,{p1,p2},{-12+4j,-12-4j});
sym(k_sim)

xt = ilaplace(inv(s*eye(2) - (A + b*k_sim)))*x0
ut = k_sim*xt

figure(1)
subplot(2,2,1)
plot(t,subs(xt(1),t),':','LineWidth',1.5)
hold on

subplot(2,2,2)
plot(t,subs(xt(2),t),':','LineWidth',1.5)
hold on

subplot(2,2,3)
plot(t,subs(ut,t),':','LineWidth',1.5)
hold on

% ------------------------------------------------------
disp(' ')
disp('--- 制御なし：u(t) = 0 ---------')
xt = ilaplace(inv(s*eye(2) - A))*x0

figure(1)
subplot(2,2,1)
plot(t,subs(xt(1),t),'LineWidth',1)
hold off

subplot(2,2,2)
plot(t,subs(xt(2),t),'LineWidth',1)
hold off

subplot(2,2,3)
hold off

% ------------------------------------------------------
figure(1)

subplot(2,2,1)
xlim([0 1])
ylim([-2 1])
grid

set(gca,'XTick',[0:0.25:1])
set(gca,'YTick',[-2:1:1])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x1(t) [V]','FontName','Arial','FontSize',22)

legend({'①','②','③','制御なし'},'Location','southeast')
set(legend,'FontName','MS UI Gothc','FontSize',16)

% ------------------------------------------------------
figure(1)

subplot(2,2,2)
xlim([0 1])
ylim([-0.5 1])
grid

set(gca,'XTick',[0:0.25:1])
set(gca,'YTick',[-0.5:0.5:1])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x2(t) [V]','FontName','Arial','FontSize',22)


% ------------------------------------------------------
figure(1)

subplot(2,2,3)
xlim([0 1])
ylim([-30 15])
grid

set(gca,'XTick',[0:0.25:1])
set(gca,'YTick',[-30:15:15])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('u(t) [V]','FontName','Arial','FontSize',22)
