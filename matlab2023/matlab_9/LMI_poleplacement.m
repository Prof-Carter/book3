clear
format compact; format short e
% ----------
J  = 0.0712;  M  = 0.390;  mu = 0.695;
l  = 0.204;   g  = 9.81;

A = [     0      1
      M*g*l/J  -mu/J ];
B = [  0
      1/J ];
% ----------
n = 2;  p = 1;
X = sdpvar(n,n,'sy');
F = sdpvar(p,n,'f');
% ----------
M = A*X + B*F;  ep = 1e-5;  % ep を加筆
LMI = [];
% ----------
qc = -5;  rc =  4;
M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
                  M'             X ];
LMI = [LMI, M_D3 >= ep*eye(length(M_D3))];      % 修正：M_D3 ≧ ep*I (> 0)
% ----------
options = sdpsettings('solver','sedumi');
solvesdp(LMI,[],options) 

X_opt = double(X)
F_opt = double(F)
K_opt = F_opt*inv(X_opt)
% ----------
format short

