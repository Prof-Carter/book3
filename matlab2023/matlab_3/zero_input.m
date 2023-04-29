close all

plant
x0 = [ 1
       0 ];
   
t = 0:0.01:5;
% t = linspace(0,5,501);

y = initial(sysP,x0,t);
plot_data

% -----
xlim([0 5])
ylim([-1 1])
set(gca,'XTick',0:1:5)
set(gca,'YTick',-1:0.5:1)