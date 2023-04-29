disp('++++++++++++++++++++++++++++++')
disp('例 8.2 (2)（つづき：シミュレーション結果の描画）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [  0   1
     -10  -1 ];
B = [ 0
      1 ];

x0 = [ 1
       0 ];

for q1 = [ 10  100  1000 ]
    
    Q = diag([ q1  0 ]);
    R = 1;

    K = - lqr(A,B,Q,R);

    Acl  = A + B*K;

    t = 0:0.001:4;

    for i = 1:length(t)
        x(:,i) = expm(Acl*t(i))*x0;
        u(i) = K*x(:,i);
    end

    x1 = x(1,:);
    x2 = x(2,:);

    % -----------------------------------------
    figure(1)
    set(gcf,'position',[50 50 1200 750])

    % -----------------------------------------
    figure(1)
    subplot(2,2,1)
    plot(t,x1,'LineWidth',1.5)
    hold on

    % -----------------------------------------
    figure(1)
    subplot(2,2,2)
    plot(t,x2,'LineWidth',1.5)
    hold on

    % -----------------------------------------
    figure(1)
    subplot(2,2,3)
    plot(t,u,'LineWidth',1.5)
    hold on
end

% -----------------------------------------
figure(1)
subplot(2,2,1)
hold off

xlim([0 4])
ylim([-1 1])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-1:0.5:1])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x1(t) [m]','FontName','Arial','FontSize',22)

% -----------------------------------------
subplot(2,2,2)
hold off

xlim([0 4])
ylim([-3 3])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-3:1.5:3])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x2(t) [m/s]','FontName','Arial','FontSize',22)

% -----------------------------------------
subplot(2,2,3)
hold off

xlim([0 4])
ylim([-30 10])
grid

set(gca,'XTick',[0:1:4])
set(gca,'YTick',[-30:10:10])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('u(t) [N]','FontName','Arial','FontSize',22)

legend({'q1 = 10','q1 = 100','q1 = 1000'},'Location','southeast')
set(legend,'FontName','Arial','FontSize',20)



