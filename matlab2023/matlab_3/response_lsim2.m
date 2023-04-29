close all

plant
    
t = 0:0.01:5;
u(1:200)   = t(1:200)/2;
u(201:501) = ones(1,301);
x0 = [ 0.1  0 ]';

lsim(sysP,u,t,x0);