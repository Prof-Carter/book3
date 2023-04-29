figure(1);
plot(t,x(:,1),'b',t,x(:,2),'r--'); grid;
xlabel('t [s]');
ylabel('x1(t) and x2(t)');
legend('x1(t)','x2(t)');

figure(2);
plot(t,phi,'b',t,dphi,'r--'); grid;
xlabel('t [s]');
ylabel('\phi(x(t)) and d\phi(x(t))/dt');
legend({'\phi(x(t))','d\phi(x(t))/dt'},'Location','southeast');