disp('++++++++++++++++++++++++++++++')
disp('�� 4.3 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ -2  0
       0 -2 ];
b = [ 2
      2 ];

syms k1 k2 p1 p2 s

k = [ k1  k2 ];

disp(' ')
disp('--- A + b*k �̓��������� ---------')
det_A_bk = det(s*eye(2) - (A + b*k))

disp(' ')
disp('--- A + b*k �̓����������F��^2 + a1*�� + a0 ---------')
a0 = subs(det_A_bk, s, 0)
a1 = subs(diff(det_A_bk, s), s, 0)

disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
p = [ p1
      p2 ]

disp(' ')
disp('--- ��(��) = ��^2 + d1*�� + d0 ---------')
delta = (s - p(1))*(s - p(2))

d0 = subs(delta, s, 0)
d1 = subs(diff(delta, s), s, 0)

disp(' ')
disp('--- k = [k1 k2] ---------')
[k1 k2] = solve(a1==d1, a0==d0, {k1, k2})
