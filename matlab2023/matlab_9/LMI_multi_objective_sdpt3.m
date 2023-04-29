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
Z = sdpvar(n,n,'sy');
% ----------
M = A*X + B*F;  ep = 1e-5;  % ep ‚ð‰Á•M
LMI = [];
% ----------
qc = -5;  rc =  4;
M_D3 = [qc*(M+M')+(rc^2-qc^2)*X  M
                  M'             X ];
LMI = [LMI, M_D3 >= ep*eye(length(M_D3))];      % C³FM_D3 † ep*I (> 0)
% ----------
Qh = diag([sqrt(10) 0]);  R  = 1;
M_LQ1 = [-(M+M')    X*Qh        F'*R
          Qh*X     eye(n)    zeros(n,p)
           R*F   zeros(p,n)      R     ];
LMI = [LMI, M_LQ1 >= ep*eye(length(M_LQ1))];    % C³FM_LQ1 † ep*I (> 0)
M_LQ2 = [   Z     eye(n)
          eye(n)    X   ];
LMI = [LMI, M_LQ2 >= ep*eye(length(M_LQ2))];    % C³FM_LQ2 † ep*I (> 0)
% ----------
options = sdpsettings('solver','sdpt3');
solvesdp(LMI,trace(Z),options) 

Z_opt = double(Z); trace(Z_opt)
X_opt = double(X)
F_opt = double(F)
K_opt = F_opt*inv(X_opt)
% ----------
format short

