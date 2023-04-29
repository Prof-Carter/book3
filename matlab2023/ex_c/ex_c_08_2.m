disp('++++++++++++++++++++++++++++++')
disp('問題 C.8 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

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
    disp('シルベスターの条件より P > 0 なので，漸近安定である')
else
    disp('シルベスターの条件より P > 0 ではないので，漸近安定ではない')
end
