disp('++++++++++++++++++++++++++++++')
disp('例 3.3')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

syms R C Q E T K x0 tau t

a = - 1/T;
b =   K/T;
c =   1;

u = E;

disp(' ')
disp('----- y(t) -------------------')
y = c*exp(a*t)*x0 + c*int(exp(a*(t - tau)), tau, 0, t)*b*u
subs(y,{T,K,x0},{R*C,C,Q})

disp(' ')
disp('----- x0 = 0.5, E = 1, T = 1, K = 1 のときのグラフ ---------------')
yt = subs(y,{x0,E,T,K},{0.5,1,1,1})

t = 0:0.01:5;
y = subs(yt,t);

figure(1)
plot(t,y,'LineWidth',1.5)
grid

xlim([0 5])
ylim([0 1.5])

set(gca,'XTick',[0:5])
set(gca,'YTick',[0:0.5:1.5])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [C]','FontName','Arial','FontSize',22)
