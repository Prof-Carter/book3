disp('++++++++++++++++++++++++++++++')
disp('��� 6.3 (1)�i���ړI�ȕ��@�F���������j')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms l1 l2 s

A = [ 0   1
      0 -10 ];
b = [  0
      10 ];
c = [ 1  0 ];

l = [ l1
      l2 ];

disp(' ')
disp('--- �ϑ��s�� Vo ---------')
Vo = obsv(A,c)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end

disp(' ')
disp('--- A + l*c �̓��������� ---------')
det_A_lc = det(s*eye(2) - (A + l*c));
det_A_lc = collect(det_A_lc,s)

disp(' ')
disp('---  A + l*c �̓����������F��^2 + a1*�� + a0 ---------')
a0 = subs(diff(det_A_lc, s, 0), s, 0)/factorial(0)
a1 = subs(diff(det_A_lc, s, 1), s, 0)/factorial(1)


disp(' ')
disp('--- �z�u�������ŗL�l�̐ݒ� ---------')
syms p1 p2

p = [ p1
      p2 ]

disp(' ')
disp('--- ��(��) = ��^2 + d1*�� + d0  ---------')
delta = (s - p(1))*(s - p(2))
delta = collect(delta)

d0 = subs(diff(delta, s, 0), s, 0)/factorial(0)
d1 = subs(diff(delta, s, 1), s, 0)/factorial(1)

disp(' ')
disp('--- �I�u�U�[�o�Q�C�� l = [ l1')
disp('                          l2 ] ---------')
[l1 l2] = solve(a1==d1, a0==d0, {l1, l2})

disp(' ')
disp('--- A + l*c �̌ŗL�l ---------')
l = [ l1
      l2 ];
eig(A + l*c)


disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- p1 = -8+2j, p2 = -8-2j �Ƃ����Ƃ��� l ---------')
l_1 = subs(l,{p1,p2},{-8+2j,-8-2j})

disp(' ')
disp('--- A + l*c �̌ŗL�l ---------')
eig(A + l_1*c)

disp(' ')
disp('_____________________________________________________________')
disp(' ')
disp('--- p1 = -16+2j, p2 = -16-2j �Ƃ����Ƃ��� l ---------')
l_2 = subs(l,{p1,p2},{-16+2j,-16-2j})

disp(' ')
disp('--- A + l*c �̌ŗL�l ---------')
eig(A + l_2*c)
