close all

plant
    
t = 0:0.01:5;

% === 単位ステップ応答 ====================================
y = step(sysP,t);

figure(1);
plot(t,y,'r','LineWidth',1.5);
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 5]);
ylim([0 0.15]);

set(gca,'XTick',0:1:5);
set(gca,'YTick',0:0.05:0.15);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{y}}({\it{t}})','FontName','Times New Roman','FontSize',22);
title('step response','FontName','Arial','FontSize',22);

movegui('northwest')

% === インパルス応答 ======================================
y = impulse(sysP,t);

figure(2);
plot(t,y,'r','LineWidth',1.5);
grid;

% --- グラフのカスタマイズ --------------------------------
xlim([0 5]);
ylim([-0.15 0.3]);

set(gca,'XTick',0:1:5);
set(gca,'YTick',-0.15:0.15:0.3);

set(gca,'FontName','Times New Roman','FontSize',20);

xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22);
ylabel('{\it{y}}({\it{t}})','FontName','Times New Roman','FontSize',22);
title('impulse response','FontName','Arial','FontSize',22);

movegui('northeast')


