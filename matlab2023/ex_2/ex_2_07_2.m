disp('++++++++++++++++++++++++++++++')
disp('��� 2.7 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  2
     -3 -5 ];
b = [ 0
      2 ];
c = [ 1  1 ];

n = length(A);

disp(' ')
disp('--- ��ԋ�ԕ\�� ------')
ss_P = ss(A,b,c,0)
disp(' ')
disp('--- ��ԋ�ԕ\������`�B�֐��\���ւ̕ϊ� ------')
zpk_P = zpk(ss_P)

disp(' ')
disp('--- ��ԋ�ԕ\���i�ŏ������j ------')
ss_Pmin = ss(ss_P,'min')
[Amin,bmin,cmin,dmin] = ssdata(ss_Pmin);
disp(' ')
disp('--- ��ԋ�ԕ\���i�ŏ������j����`�B�֐��\���ւ̕ϊ� ------')
zpk_Pmin = zpk(ss_Pmin)

disp(' ')
disp('--- �ŏ��������ǂ����̔��� ------')
n_min = length(Amin);

if n == n_min
    disp('�@..... �^����ꂽ��ԋ�ԕ\���͍ŏ������ł���')
else
    disp('�@..... �^����ꂽ��ԋ�ԕ\���͍ŏ������ł͂Ȃ�')
end


