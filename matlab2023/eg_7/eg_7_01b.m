disp('++++++++++++++++++++++++++++++')
disp('例 7.1（つづき）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

t_final = 5;
x0 = [ pi/3
        0   ];

[t,x] = ode45(@pend,[0:0.01:t_final],x0);

x1 = x(:,1);
x2 = x(:,2);

% --------------------------------------------
figure(1)
set(gcf,'position',[50 50 600 750])

% --------------------------------------------
figure(1)
subplot(2,1,1)
plot(t,x1*180/pi,'LineWidth',1.5)
grid

xlim([0 5])
ylim([-60 60])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-60:30:60])

set(gca,'FontName','Arial','FontSize',16)

xlabel('t [s]','FontName','Arial','FontSize',18)
ylabel('{x}_{1}(t) [deg]','FontName','Arial','FontSize',18)

% --------------------------------------------
figure(1)
subplot(2,1,2)
plot(t,x2,'LineWidth',1.5)
grid

xlim([0 5])
ylim([-6 6])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-6:3:6])

set(gca,'FontName','Arial','FontSize',16)

xlabel('t [s]','FontName','Arial','FontSize',18)
ylabel('{x}_{2}(t) [rad/s]','FontName','Arial','FontSize',18)

movegui('northwest')

% --------------------------------------------
l  = 0.141;                     % アームの軸から重心までの距離
M  = 0.300;                     % アームの質量
J  = 9.56*10^(-3);              % 慣性モーメント
mu = 1.33*10^(-2);              % 軸の粘性摩擦係数
g  = 9.81;                      % 重力加速度

phi  = (1/2)*J*x2.^2 + M*g*l*(1 - cos(x1))
dphi = - mu*x2.^2;

% --------------------------------------------
figure(2)
set(gcf,'position',[50 50 600 750])

% --------------------------------------------
figure(2)
subplot(2,1,1)
plot(t,phi,'LineWidth',1.5)
grid

xlim([0 5])
ylim([-0.1 0.3])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-0.1:0.1:0.3])

set(gca,'FontName','Arial','FontSize',16)

xlabel('t [s]','FontName','Arial','FontSize',18)
ylabel('\phi(x(t)) [J]','FontName','Arial','FontSize',18)

% --------------------------------------------
figure(2)
subplot(2,1,2)
plot(t,dphi,'LineWidth',1.5)
grid

xlim([0 5])
ylim([-0.6 0.2])

set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-0.6:0.2:0.2])

set(gca,'FontName','Arial','FontSize',16)

xlabel('t [s]','FontName','Arial','FontSize',18)
ylabel('d\phi(x(t))/dt [J/s]','FontName','Arial','FontSize',18)

movegui('northeast')


