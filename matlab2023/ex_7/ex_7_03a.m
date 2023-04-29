disp('++++++++++++++++++++++++++++++')
disp('問題 7.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -2
      1 -2 ];

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
P = lyap(A',eye(n))

%  P の固有値がすべて正であるかどうかで正定性を判別
disp(' ')
disp('--- P の固有値 ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P の固有値はすべて正であり，P > 0 なので，漸近安定である')
else
    disp('P の固有値には負のものが含まれ，P > 0 ではないので，漸近安定ではない')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 7.3 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1  0
      0  0  1
     -1 -3 -3 ];

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
P = lyap(A',eye(n))

%  P の固有値がすべて正であるかどうかで正定性を判別
disp(' ')
disp('--- P の固有値 ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P の固有値はすべて正であり，P > 0 なので，漸近安定である')
else
    disp('P の固有値には負のものが含まれ，P > 0 ではないので，漸近安定ではない')
end


disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 7.3 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
      4  3 ];

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
P = lyap(A',eye(n))

%  P の固有値がすべて正であるかどうかで正定性を判別
disp(' ')
disp('--- P の固有値 ---------')
eig_P = eig(P)

if eig_P > 0
    disp('P の固有値はすべて正であり，P > 0 なので，漸近安定である')
else
    disp('P の固有値には負のものが含まれ，P > 0 ではないので，漸近安定ではない')
end
