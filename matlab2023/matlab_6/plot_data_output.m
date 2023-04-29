figure(1); subplot(2,2,1);
plot(t,x(:,1),t,x_hat(:,1),'--');
grid;
xlabel('t [s]');
ylabel('position (cart1) [m]')
legend({'x1','x1hat'},'Location','southeast')
xlim([0 5]);

figure(1); subplot(2,2,2);
plot(t,x(:,2),t,x_hat(:,2),'--');
grid;
xlabel('t [s]');
ylabel('velocity (cart1) [m/s]')
legend({'x2','x2hat'},'Location','southeast')
xlim([0 5]);

figure(1); subplot(2,2,3);
plot(t,x(:,3),t,x_hat(:,3),'--');
grid;
xlabel('t [s]');
ylabel('position (cart2) [m]')
legend({'x3','x3hat'},'Location','southeast')
xlim([0 5]);

figure(1); subplot(2,2,4);
plot(t,x(:,4),t,x_hat(:,4),'--');
grid;
xlabel('t [s]');
ylabel('velocity (cart2) [m/s]')
legend({'x4','x4hat'},'Location','southeast')
xlim([0 5]);
% ----------------------------------
figure(2); subplot(2,1,1);
plot(t,x(:,3));
grid;
xlabel('t [s]');
ylabel('position (cart2) [m]')
xlim([0 15]);
