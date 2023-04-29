function [Ao,bo,co] = obsv_ss(num_P,den_P)
% 伝達関数表現から状態空間表現（可観測標準形）への変換

disp(' ')
disp('--- 状態空間表現（可観測標準形）     ------')
disp('--- dxo(t)/dt = Ao*xo(t) + bo*u(t) ------')
disp('---   y(t)    = co*xo(t)           ------')

n = length(den_P) - 1;
m = length(num_P) - 1;

Ac = zeros(n,n);
bc = zeros(n,1);
cc = zeros(1,n);

for i = 1:n-1
    Ac(i,i+1) = 1;
end
for i = 1:n
    Ac(n,i) = -den_P(n+2-i);
end
bc(n,1) = 1;
for i = 1:m+1
    cc(1,i) = num_P(m+2-i);
end

Ao = Ac';
bo = cc';
co = bc';