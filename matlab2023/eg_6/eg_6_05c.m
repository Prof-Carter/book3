disp('++++++++++++++++++++++++++++++')
disp('例 6.5（シミュレーション結果：状態変数とその推定値）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

M1 = 0.5;
M2 = 1;
k  = 2;
mu = 1;

A = [   0      1      0      0
      -k/M1 -mu/M1   k/M1  mu/M1
        0      0      0      1
       k/M2  mu/M2  -k/M2 -mu/M2 ];
B = [  0
      1/M1
       0
       0  ];
C = [ 0  0  1  0 ];

x0 = [ -0.5
        0
        0.5
        0  ];
x0_hat = [ 0
           0
           0
           0 ];

K = [ -7/2  -5/2  -13/2  -11/2 ];
H = 10;

p = [ -4+4j
      -4-4j
      -4+2j
      -4-2j ]

Ad = A';
Bd = C';
Kd = - acker(Ad,Bd,p);

L = Kd'

% -----------------------------------------------------
figure(1)
set(gcf,'position',[50 50 1200 750])

M1v = 1*M1;
M2v = 1*M2;

Av = [    0       1       0       0
       -k/M1v -mu/M1v   k/M1v  mu/M1v
          0       0       0       1
        k/M2v  mu/M2v  -k/M2v -mu/M2v ];
Bv = [  0
      1/M1v
        0
        0  ];

tf = 15;
sim('eg_6_05_R2018a',tf)    % R2018a 以降
% sim('eg_6_05_R2018a',tf)    % R2020a 以降
% sim('eg_6_05_R2023a',tf)    % R2023a 以降

figure(1)
for i = 1:4
    subplot(2,2,i)

    plot(t,x(:,i),         'LineWidth',1.5); hold on
    plot(t,x_hat(:,i),'--','LineWidth',1.5); hold off

    grid

    xlim([0 5])

    set(gca,'xtick',[0:1:5])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
end

subplot(2,2,1)
ylim([-1 2])
set(gca,'ytick',[-1:1:2])
ylabel('x1(t), x1hat(t) [m]','FontName','Arial','FontSize',16)
legend({'x1(t)', 'x1hat(t)'},'Location','southeast')

subplot(2,2,2)
ylim([-4 8])
set(gca,'ytick',[-4:4:8])
ylabel('x2(t), x2hat(t) [m/s]','FontName','Arial','FontSize',16)
legend({'x2(t)', 'x2hat(t)'},'Location','northeast')

subplot(2,2,3)
ylim([0 1.5])
set(gca,'ytick',[0:0.5:1.5])
ylabel('x3(t), x3hat(t) [m]','FontName','Arial','FontSize',16)
legend({'x3(t)', 'x3hat(t)'},'Location','southeast')

subplot(2,2,4)
ylim([-1.5 3])
set(gca,'ytick',[-1.5:1.5:3])
ylabel('x4(t), x4hat(t) [m/s]','FontName','Arial','FontSize',16)
legend({'x4(t)', 'x4hat(t)'},'Location','northeast')


