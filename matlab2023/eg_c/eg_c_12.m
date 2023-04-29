disp('++++++++++++++++++++++++++++++')
disp('例 C.12')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2  1
      1  2 ] 
n = length(P);

% シルベスターの条件により P の正定性を判別
flag = 1;
for i = 1:n
    disp(' ')
    disp('--- 主座小行列式の行列式 ------')
    i
    det(P(1:i,1:i))

    if det(P(1:i,1:i)) < 0  % 主座小行列式の符号のチェック
        flag = 0;
        break
    end
end

disp(' ')
if flag == 1
    disp('シルベスターの条件より P > 0 である')
else
    disp('シルベスターの条件より P > 0 ではない')
end