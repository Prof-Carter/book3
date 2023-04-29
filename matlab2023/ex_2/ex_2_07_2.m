disp('++++++++++++++++++++++++++++++')
disp('問題 2.7 (2)')
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
disp('--- 状態空間表現 ------')
ss_P = ss(A,b,c,0)
disp(' ')
disp('--- 状態空間表現から伝達関数表現への変換 ------')
zpk_P = zpk(ss_P)

disp(' ')
disp('--- 状態空間表現（最小実現） ------')
ss_Pmin = ss(ss_P,'min')
[Amin,bmin,cmin,dmin] = ssdata(ss_Pmin);
disp(' ')
disp('--- 状態空間表現（最小実現）から伝達関数表現への変換 ------')
zpk_Pmin = zpk(ss_Pmin)

disp(' ')
disp('--- 最小実現かどうかの判別 ------')
n_min = length(Amin);

if n == n_min
    disp('　..... 与えられた状態空間表現は最小実現である')
else
    disp('　..... 与えられた状態空間表現は最小実現ではない')
end


