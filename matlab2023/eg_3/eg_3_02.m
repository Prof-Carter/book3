disp('++++++++++++++++++++++++++++++')
disp('—á 3.2')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

syms R C E T K positive
syms tau t real

a = - 1/T;
b =   K/T;
c =   1;

u = E;

disp(' ')
disp('----- y(t) -------------------')
y = c*int(exp(a*(t - tau)), tau, 0, t)*b*u

disp(' ')
disp('----- y(T) -------------------')
y_T = subs(y,t,T)

disp(' ')
disp('----- 1 - 1/e ----------------')
1 - 1/exp(1)

disp(' ')
disp('----- dy(t)/dt ---------------')
dy = diff(y,t)

disp(' ')
disp('----- dy(0)/dt ---------------')
dy_0 = subs(dy,t,0)

disp(' ')
disp('----- E = 1, T = 1, K = 1 ‚Ì‚Æ‚«‚ÌƒOƒ‰ƒt ---------------')
yt = subs(y,{E,T,K},{1,1,1})

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

