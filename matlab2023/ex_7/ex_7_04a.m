disp('++++++++++++++++++++++++++++++')
disp('問題 7.4 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -2
      1 -2 ];

disp(' ')
disp('--- Qo ---------')
Qo = [ 1  0 ]

disp(' ')
disp('--- 可観測行列 Vo ---------')
Vo = obsv(A,Qo)

disp(' ')
disp('--- |Vo| ---------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('(Qo, A) は可観測である')
else
    disp('(Qo, A) は可観測ではない')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 7.4 (2)')
disp('++++++++++++++++++++++++++++++')

disp(' ')
disp('--- リアプノフ方程式の対称解 P ---------')
Q = Qo'*Qo
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
n = length(A);
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
