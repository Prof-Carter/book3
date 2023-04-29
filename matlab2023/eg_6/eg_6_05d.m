disp('++++++++++++++++++++++++++++++')
disp('例 6.5（パラメータ変動を生じた場合のシミュレーション結果）')
disp('++++++++++++++++++++++++++++++')

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
% sim('eg_6_05_R2020a',tf)    % R2020a 以降
% sim('eg_6_05_R2023a',tf)    % R2023a 以降

figure(1)
subplot(2,1,1)
plot(t,y_ref,     'LineWidth',1.5); hold on
plot(t,y,         'LineWidth',1.5); hold on
plot(t,y_s,  '--','LineWidth',1.5); hold off

% -----------------------------------------------------
M1v = 1.25*M1;
M2v = 1.25*M2;

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
subplot(2,1,2)
plot(t,y_ref,     'LineWidth',1.5); hold on
plot(t,y,         'LineWidth',1.5); hold on
plot(t,y_s,  '--','LineWidth',1.5); hold off


% -----------------------------------------------------
figure(1)
for i = 1:2
    subplot(2,1,i)
    grid

    xlim([0 15])
    ylim([-0.25 1.5])

    set(gca,'xtick',[0:1:15])
    set(gca,'ytick',[-0.25:0.25:1.5])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
    ylabel('y(t) [m]','FontName','Arial','FontSize',16)

    legend({'目標値','出力フィードバック','状態フィードバック'},'Location','southeast')
    set(legend,'FontName','MS UI Gothic','FontSize',13)
end

subplot(2,1,1)
title('M1'' = M1, M2'' = M2','FontName','Arial','FontSize',16)
subplot(2,1,2)
title('M1'' = 1.25*M1, M2'' = 1.25*M2','FontName','Arial','FontSize',16)
