disp('++++++++++++++++++++++++++++++')
disp('問題 C.7')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2  1
      1  2 ] 

syms c1 c2 d1 d2 real

disp(' ')
disp('--- ξ = [γ1+δ1*j           ')
disp('          γ2+δ2*j ]---------')
x = [ c1+d1*i
      c2+d2*i ]

disp(' ')
disp('--- φ(ξ) = ξ''*P*ξ ---------')
phi = x'*P*x;
phi = simplify(phi)

disp(' ')
disp('--- φ(ξ)：γ1 について平方完成 ---------')
a = diff(phi,c1,2)/2;
b = subs(diff(phi,c1),c1,0);
c = phi - (a*c1^2 + b*c1);

h = - b/(2*a);
k = c - b^2/(4*a);
phi = a*(c1 - h)^2 + k  % 平方完成

% -----
disp(' ')
disp('--- φ(ξ)：δ1 について平方完成 ---------')
a = diff(phi,d1,2)/2;
b = subs(diff(phi,d1),d1,0);
c = phi - (a*d1^2 + b*d1);

h = - b/(2*a);
k = c - b^2/(4*a);
phi = a*(d1 - h)^2 + k  % 平方完成

