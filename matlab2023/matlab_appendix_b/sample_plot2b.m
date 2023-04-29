clear
x = 0:0.05:5;
y = 1 - exp(-2*x).*cos(5*x);
figure(1); clf;
plot(x,y,'g-o','linewidth',2,'markersize',12);
xlabel('{\it{t}} [s]', ...
   'fontsize',28, 'fontname','times');
ylabel('{\it{y}}({\it{t}}) [m]', ...
   'fontsize',28, 'fontname','times');
title('{\bf{response}}', ...
   'fontsize',28, 'fontname','times');
grid;
set(gca, ...
   'fontsize',24, 'fontname','times');
    
xlim([0 3]);
set(gca,'xtick',[0:0.5:3]);
ylim([0 1.5]);
set(gca,'ytick',[0:0.25:1.5]);
legend('plot data');
set(legend, ...
   'fontsize',24, 'fontname','times');
