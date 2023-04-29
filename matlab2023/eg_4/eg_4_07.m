disp('++++++++++++++++++++++++++++++')
disp('例 4.7')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

syms k11 k12 k13 k14 real
syms k21 k22 k23 k24 real
syms d10 d11 d20 d21 real
syms s

A = [ 0  1  0  0
     -1 -1  1  1
      0  0  0  1
      2  2 -2 -2 ];
B = [ 0  0
     1/2 0
      0  0
      0  1 ];

x0 = [ 1
       0
      -1
       0 ];

K = [ k11  k12  k13  k14
      k21  k22  k23  k24 ];

disp(' ')
disp('--- Acl = A + B*K ---------')
Acl = A + B*K

disp(' ')
disp('--- (4.63) 式を満足させるような K ---------')
k11 = solve(Acl(2,1)+d10, k11);      % Acl(2,1) = - d10
k12 = solve(Acl(2,2)+d11, k12);      % Acl(2,2) = - d11
k13 = solve(Acl(2,3),     k13);      % Acl(2,3) = 0
k14 = solve(Acl(2,4),     k14);      % Acl(2,4) = 0

k21 = solve(Acl(4,1),     k21);      % Acl(2,1) = 0
k22 = solve(Acl(4,2),     k22);      % Acl(4,2) = 0
k23 = solve(Acl(4,3)+d20, k23);      % Acl(4,3) = - d20
k24 = solve(Acl(4,4)+d21, k24);      % Acl(4,4) = - d21

K = [ k11  k12  k13  k14 
      k21  k22  k23  k24 ];

disp(' ')
disp('_______________________________________________________________________')
disp(' ')
disp('--- ① d11 = 4, d10 = 4, d21 = 8, d20 = 16 としたときの K = K1 ---------')
K1 = subs(K,{d11,d10,d21,d20},{4,4,8,16})

disp(' ')
disp('--- A + B*K1 の固有値 ---------')
Acl1 = A + B*K1;
eig(Acl1)

disp(' ')
disp('--- exp((A + B*K1)*t) ---------')
exp_Aclt1 = ilaplace(inv(s*eye(4) - Acl1))

disp(' ')
disp('--- x(t) ---------')
xt1 = exp_Aclt1*x0
disp(' ')
disp('--- u(t) ---------')
ut1 = K1*xt1

disp(' ')
disp('_______________________________________________________________________')
disp(' ')
disp('--- ② d11 = 8, d10 = 16, d21 = 4, d20 = 4 としたときの K = K2 ---------')
K2 = subs(K,{d11,d10,d21,d20},{8,16,4,4})

disp(' ')
disp('--- A + B*K2 の固有値 ---------')
Acl2 = A + B*K2;
eig(Acl2)

disp(' ')
disp('--- exp((A + B*K2)*t) ---------')
exp_Aclt2 = ilaplace(inv(s*eye(4) - Acl2))

disp(' ')
disp('--- x(t) ---------')
xt2 = exp_Aclt2*x0
disp(' ')
disp('--- u(t) ---------')
ut2 = K2*xt2

disp(' ')
disp('_______________________________________________________________________')
disp(' ')
disp('--- ③ d11 = 6, d10 = 8, d21 = 6, d20 = 8 としたときの K = K3 ---------')
K3 = subs(K,{d11,d10,d21,d20},{6,8,6,8})

disp(' ')
disp('--- A + B*K3 の固有値 ---------')
Acl3 = A + B*K3;
eig(Acl3)

disp(' ')
disp('--- exp((A + B*K3)*t) ---------')
exp_Aclt3 = ilaplace(inv(s*eye(4) - Acl3))

disp(' ')
disp('--- x(t) ---------')
xt3 = exp_Aclt3*x0
disp(' ')
disp('--- u(t) ---------')
ut3 = K3*xt3

disp(' ')
disp('_______________________________________________________________________')
disp(' ')
disp('--- x(t) = exp(A*t)*x0 (u(t) = 0：制御なし) ---------')
exp_At = ilaplace(inv(s*eye(4) - A))
xt_no_control = exp_At*x0

% -----------------------------------------------------------
t = 0:0.01:4;

figure(1)
set(gcf,'position',[50 50 1200 750])

% -----------------
subplot(2,2,1)
plot(t,subs(xt1(1),t),'LineWidth',1.5)
hold on
plot(t,subs(xt2(1),t),':','LineWidth',1.5)
plot(t,subs(xt3(1),t),'--','LineWidth',1.5)
plot(t,subs(xt_no_control(1),t),'LineWidth',1)
hold off

xlim([0 4])
ylim([-0.5 1.5])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-0.5:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('z1(t) [m]','FontName','Arial','FontSize',22)

legend('①','②','③','制御なし')
set(legend,'FontName','MS UI Gothic','FontSize',14)

% -----------------
subplot(2,2,3)
plot(t,subs(xt1(3),t),'LineWidth',1.5)
hold on
plot(t,subs(xt2(3),t),':','LineWidth',1.5)
plot(t,subs(xt3(3),t),'--','LineWidth',1.5)
plot(t,subs(xt_no_control(3),t),'LineWidth',1)
hold off

xlim([0 4])
ylim([-1.5 0.5])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-1.5:0.5:0.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('z2(t) [m]','FontName','Arial','FontSize',22)

% -----------------
subplot(2,2,2)
plot(t,subs(ut1(1),t),'LineWidth',1.5)
hold on
plot(t,subs(ut2(1),t),':','LineWidth',1.5)
plot(t,subs(ut3(1),t),'--','LineWidth',1.5)
hold off

xlim([0 4])
ylim([-30 10])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-30:10:10])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('f1(t) [N]','FontName','Arial','FontSize',22)

% -----------------
subplot(2,2,4)
plot(t,subs(ut1(2),t),'LineWidth',1.5)
hold on
plot(t,subs(ut2(2),t),':','LineWidth',1.5)
plot(t,subs(ut3(2),t),'--','LineWidth',1.5)
hold off

xlim([0 4])
ylim([-20 20])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-20:10:20])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('f2(t) [N]','FontName','Arial','FontSize',22)

