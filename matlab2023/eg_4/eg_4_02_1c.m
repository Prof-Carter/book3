disp('++++++++++++++++++++++++++++++')
disp('例 4.2 (1)（グラフの描画）')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [ -3   1
       2  -2 ];
B = [ 2
      0 ];

tf = 2;
xf = [ 1
       0 ];
x0 = [ 1
       2 ];

syms s tau

exp_At = ilaplace(inv(s*eye(2) - A));
M = subs(exp_At,-tau);  % M = exp(-A*tau)

disp(' ')
disp('--- 可制御性グラミアン Wc(tf) -----------------')
Wc_tf = int(M*B*(M*B)',0,tf)
Wc_tf = double(Wc_tf)

t = 0:0.001:tf;
k = length(t);

for i = 1:k
    u(i) = (expm(-A*t(i))*B)'*inv(Wc_tf)*(expm(-A*tf)*xf - x0);
end

disp(' ')
disp('--- 状態空間表現 -----------------')
C = eye(2);
D = zeros(2,1);
sys = ss(A,B,C,D)

x = lsim(sys,u,t,x0);

% -----------------------------------------------------------------------
figure(1)
plot(t,x(:,1),     'LineWidth',1.5); hold on
plot(t,x(:,2),'--','LineWidth',1.5); hold on
plot(t,u,     '-.','LineWidth',1.5); hold off
grid
axis('square')

xlim([0 2])
ylim([-2 6])
set(gca,'XTick',[0:0.5:2])
set(gca,'YTick',[-2:1:6])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('x1(t), x2(t), u(t) [V]','FontName','Arial','FontSize',22)

legend({'x1(t)','x2(t)','u(t)'},'Location','northwest')
set(legend,'FontName','Arial','FontSize',16)

movegui('northwest')

% -----------------------------------------------------------------------
figure(2)
plot(x0(1),x0(2),'o','LineWidth',1.5,'MarkerSize',10, ...
    'MarkerEdgeColor',[0 114 189]/255,'MarkerFaceColor',[0 114 189]/255); hold on
plot(xf(1),xf(2),'o','LineWidth',1.5,'MarkerSize',10, ...
    'MarkerEdgeColor',[217 83 25]/255,'MarkerFaceColor',[217 83 25]/255); hold on
plot(x(:,1),x(:,2),'LineWidth',1.5); hold off
grid
axis('square')

xlim([-1 3])
ylim([-1 3])
set(gca,'XTick',[-1:0.5:3])
set(gca,'YTick',[-1:0.5:3])
set(gca,'XTickLabel',{'-1','','0','','1','','2','','3'})
set(gca,'YTickLabel',{'-1','','0','','1','','2','','3'})
set(gca,'FontName','Arial','FontSize',20)

xlabel('x1(t)','FontName','Arial','FontSize',22)
ylabel('x2(t)','FontName','Arial','FontSize',22)

legend('x0 = [1 2]''','xf = [1 0]''')
set(legend,'FontName','Arial','FontSize',16)

movegui('northeast')

