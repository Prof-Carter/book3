disp('++++++++++++++++++++++++++++++')
disp('��� 6.3 (1)')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('(a) ���ړI�ȕ��@�i���������j')

clear
format compact

syms l1 l2 s

A = [ 0  -1 
     -1   0 ];
b = [ 1
      1 ];
c = [ 0  1 ];

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
p = [ -5
      -5 ]

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


