disp('++++++++++++++++++++++++++++++')
disp('—á 6.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0  0
     -4 -2  4  2
      0  0  0  1
      2  1 -2 -1 ];
b = [ 0
      2
      0
      0 ];
c = [ 0  0  1  0 ];

disp(' ')
disp('----- ‰ÂŠÏ‘ªs—ñ Vo ------')
Vo = obsv(A,c);
Vo = sym(Vo)

disp(' ')
disp('----- Vo ‚Ì‹ts—ñ ------')
inv(Vo)

disp(' ')
disp('----- E ------')
E = [ 0        0      0
      c*b      0      0
      c*A*b    c*b    0
      c*A^2*b  c*A*b  c*b ]

syms eta d_eta dd_eta ddd_eta u d_u dd_u

alpha = [ eta 
          d_eta 
          dd_eta 
          ddd_eta ];
beta = [ u 
         d_u 
         dd_u ];

disp(' ')
disp('----- x(t) = inv(Vo)*(alpha(t) - E*beta(t)) ------')
x = inv(Vo)*(alpha - E*beta)
