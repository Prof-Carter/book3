clear;
t = 0:0.05:5;
y = 1 - exp(-2*t).*cos(5*t);
figure(1); clf;
plot(t,y);
xlabel('t'); ylabel('y(t)');
title('response');
legend('plot data');