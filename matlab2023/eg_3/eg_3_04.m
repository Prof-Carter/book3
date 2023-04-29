disp('++++++++++++++++++++++++++++++')
disp('—á 3.4 (1)')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

A = [  0   1
     -10 -11 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

yt = c*exp_At*x0

t = 0:0.01:5;
y = subs(yt,t);

figure(1)
plot(t,y,'LineWidth',1.5)
grid
xlim([0 5])
ylim([-1 1])
set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-1:0.5:1])
set(gca,'FontName','Arial','FontSize',20)
xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

movegui('northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('—á 3.4 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [  0  1
     -10 -2 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

yt = c*exp_At*x0

t = 0:0.01:5;
y = subs(yt,t);

figure(2)
plot(t,y,'LineWidth',1.5)
grid
xlim([0 5])
ylim([-1 1])
set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-1:0.5:1])
set(gca,'FontName','Arial','FontSize',20)
xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

movegui('north')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('—á 3.4 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A  = [  0  1
      -10  0 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

yt = c*exp_At*x0

t = 0:0.01:5;
y = subs(yt,t);

figure(3)
plot(t,y,'LineWidth',1.5)
grid
xlim([0 5])
ylim([-1 1])
set(gca,'XTick',[0:1:5])
set(gca,'YTick',[-1:0.5:1])
set(gca,'FontName','Arial','FontSize',20)
xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

movegui('northeast')
