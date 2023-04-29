disp('++++++++++++++++++++++++++++++')
disp('問題 3.1 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms t tau real
syms R L positive

a = - R/L;
b = 1/L;
c = 1;

u = 1;

y = c*int(exp(a*(t - tau)), tau, 0, t)*b*u
