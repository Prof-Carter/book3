disp('++++++++++++++++++++++++++++++')
disp('例 7.2')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -5
      1 -2 ]

disp(' ')
disp('--- A の固有値 ---------')
lambda = eig(A)

if real(lambda) < 0
    disp('A の固有値の実部がすべて負なので，漸近安定である')
else
    disp('A の固有値に実部が正のものが含まれるので，漸近安定ではない')
end

disp(' ')
disp('--- リアプノフ方程式の対称解 P ---------')
n = length(A);
Q = eye(n)
P = lyap(A',Q)

%  P の固有値がすべて正であるかどうかで正定性を判別
disp(' ')
disp('--- P の固有値 ---------')
eig_P = eig(P)

if eig_P > 0
    disp('(a) P の固有値はすべて正であり，P > 0 なので，漸近安定である')
else
    disp('(a) P の固有値には負のものが含まれ，P > 0 ではないので，漸近安定ではない')
end

% シルベスターの条件により P の正定性を判別
flag = 1;
for i = 1:n
    if det(P(1:i,1:i)) < 0  % 主座小行列式の符号のチェック
        flag = 0;
        break
    end
end

disp(' ')
if flag == 1
    disp('(b) シルベスターの条件より P > 0 なので，漸近安定である')
    for i = 1:n
        fprintf('主座小行列式：i = %d\n',i)
        det(P(1:i,1:i))
    end
else
    disp('(b) シルベスターの条件より P > 0 ではないので，漸近安定ではない')
end