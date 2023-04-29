close all

plant
x0 = [ 1
       0 ];
   
t = 0:0.01:5;
% t = linspace(0,5,501);

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
yt = C*exp_At*x0

y  = subs(yt,t);
plot_data

% -----
ylim([-1 1])
set(gca,'XTick',0:1:5)
set(gca,'YTick',-1:0.5:1)
