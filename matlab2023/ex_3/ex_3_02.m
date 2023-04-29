disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.2 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -3 -4 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

syms t real
exp_At = expm(A*t);
exp_At = simplify(exp_At)

yt = c*exp_At*x0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.2 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0  1
     -2 -2 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

syms t real
exp_At = expm(A*t);
exp_At = simplify(exp_At)

yt = c*exp_At*x0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.2 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0 -4
      1 -4 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

syms t real
exp_At = expm(A*t);
exp_At = simplify(exp_At)

yt = c*exp_At*x0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('–â‘è 3.2 (4)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

A = [ 0   1
      4  -3 ];
c  = [ 1  0 ];
x0 = [ 1
       0 ];

syms s
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

syms t real
exp_At = expm(A*t);
exp_At = simplify(exp_At)

yt = c*exp_At*x0
