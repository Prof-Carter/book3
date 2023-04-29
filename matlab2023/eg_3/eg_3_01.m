disp('++++++++++++++++++++++++++++++')
disp('例 3.1')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

syms R C Q T K positive
syms x0 t real

a = - 1/T;
b =   K/T;
c =   1;

disp(' ')
disp('----- y(t) -------------------')
y = c*exp(a*t)*x0
subs(y,{T,K,x0},{R*C,C,Q})

disp(' ')
disp('----- y(T) -------------------')
y_T = subs(y,t,T)

disp(' ')
disp('----- 1/e --------------------')
1/exp(1)

disp(' ')
disp('----- dy(t)/dt ---------------')
dy = diff(y,t)

disp(' ')
disp('----- dy(0)/dt ---------------')
dy_0 = subs(dy,t,0)

disp(' ')
disp('----- x0 = 1, T = 1, K = 1 のときのグラフ ---------------')
yt = subs(y,{x0,T,K},{1,1,1})

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


