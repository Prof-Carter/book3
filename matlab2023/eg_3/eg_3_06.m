disp('++++++++++++++++++++++++++++++')
disp('例 3.6 (1)')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [  0   1
     -10 -11 ];
b = [ 0
      1 ];
c  = [ 1  0 ];
u = 1;

syms s t tau
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

int_exp_At = int(subs(exp_At, t, tau), tau, 0, t)

yt = c*int_exp_At*b

t = 0:0.01:5;
y = subs(yt,t);

figure(1)
plot(t,y,'LineWidth',1.5)
grid
xlim([0 5])
ylim([0 0.15])
set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.05:0.15])
set(gca,'FontName','Arial','FontSize',20)
xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

movegui('northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('例 3.6 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0  1
     -10 -2 ];
b = [ 0
      1 ];
c  = [ 1  0 ];
u = 1;

syms s t tau
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

int_exp_At = int(subs(exp_At, t, tau), tau, 0, t)

yt = c*int_exp_At*b

t = 0:0.01:5;
y = subs(yt,t);

figure(2)
plot(t,y,'LineWidth',1.5)
grid
xlim([0 5])
ylim([0 0.15])
set(gca,'XTick',[0:1:5])
set(gca,'YTick',[0:0.05:0.15])
set(gca,'FontName','Arial','FontSize',20)
xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

movegui('northeast')

