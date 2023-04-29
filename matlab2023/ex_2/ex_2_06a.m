disp('++++++++++++++++++++++++++++++')
disp('問題 2.6 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 伝達関数表現 y(s) = P(s)*u(s) ------')
num_P = 1;
den_P = [1 2 3];
tf_P  = tf(num_P,den_P)

% ------------------------------------------------------
[A,b,c,d] = tf2ss(num_P,den_P);
T = [ 0  1
      1  0 ];

disp(' ')
disp('--- 状態空間表現（可制御標準形）     ------')
disp('--- dxc(t)/dt = Ac*xc(t) + bc*u(t) ------')
disp('---   y(t)    = cc*xc(t)           ------')
ss_P = ss(A,b,c,d);
ss_P = ss2ss(ss_P,T);
[Ac,bc,cc,dc] = ssdata(ss_P)

% ------------------------------------------------------
disp(' ')
disp('--- 状態空間表現（可観測標準形）     ------')
disp('--- dxo(t)/dt = Ao*xo(t) + bo*u(t) ------')
disp('---   y(t)    = co*xo(t)           ------')
Ao = Ac'
bo = cc'
co = bc'



disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('問題 2.6 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

disp(' ')
disp('--- 伝達関数表現 y(s) = P(s)*u(s) ------')
num_P = 4*[1 2];
den_P = [1 3 4 2];
tf_P  = tf(num_P,den_P)

% ------------------------------------------------------
[A,b,c,d] = tf2ss(num_P,den_P);
T = [ 0  0  1
      0  1  0
      1  0  0 ];

disp(' ')
disp('--- 状態空間表現（可制御標準形）     ------')
disp('--- dxc(t)/dt = Ac*xc(t) + bc*u(t) ------')
disp('---   y(t)    = cc*xc(t)           ------')
ss_P = ss(A,b,c,d);
ss_P = ss2ss(ss_P,T);
[Ac,bc,cc,dc] = ssdata(ss_P)

% ------------------------------------------------------
disp(' ')
disp('--- 状態空間表現（可観測標準形）     ------')
disp('--- dxo(t)/dt = Ao*xo(t) + bo*u(t) ------')
disp('---   y(t)    = co*xo(t)           ------')
Ao = Ac'
bo = cc'
co = bc'
