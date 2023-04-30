clear
format compact

syms a b c x real

disp(' ')
disp('--- eq1 = (a + b + c)^2 を定義 ---')
eq1 = (a + b + c)^2

disp(' ')
disp('--- eq1 を展開 ---')
eq2 = expand(eq1)

disp(' ')
disp('--- eq2 を因数分解 ---')
eq3 = prod(factor(eq2))     % バージョンアップに伴い変更

disp(' ')
disp('--- eq2 を簡略化 ---')
eq4 = simplify(eq2)

disp(' ')
disp('--- eq1 を a についてべき乗で項をまとめる ---')
eq5 = collect(eq1,a)        % 加筆

disp(' ')
disp('--- eq1 を b についてべき乗で項をまとめる ---')
eq6 = collect(eq1,b)        % 加筆