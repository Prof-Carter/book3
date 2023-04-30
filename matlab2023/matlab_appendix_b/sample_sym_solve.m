clear
format compact

syms a b c x real

disp(' ')
disp('--- f(x) = a*x^2 + b*x + c を定義 ---')
fx = a*x^2 + b*x + c

disp(' ')
disp('--- f(x) = 0 の解を求める ---')
sol = solve(fx, x)

disp(' ')
disp('--- 解に a = 1 を代入 ---')
sol1 = subs(sol, a, 1)

disp(' ')
disp('--- 解に a = 1, b = 1, c = 3 を代入 ---')
sol2 = subs(sol, {a,b,c}, {1,1,3})

disp(' ')
disp('--- 倍精度で表示 ---')
sol3 = double(sol2)

disp(' ')
disp('--- シンボリックで表示 ---')
sol4 = sym(sol3)