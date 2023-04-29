disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s p11 p12 p22

A = [ 0 -2
      1 -2 ]

disp(' ')
disp('----- ���A�v�m�t������ P*A + A''*P = - I -----')
disp('-----   ===> M = P*A + A''*P + I = 0    -----')
P = [ p11  p12
      p12  p22 ];
M = P*A + A'*P + eye(2)
[p11 p12 p22] = solve(M(1,1)==0, M(1,2)==0, M(2,2)==0, {p11, p12, p22});

disp(' ')
disp('�@----- ���A�v�m�t�������̉� P�i���������j-----')
P = [ p11  p12
      p12  p22 ]

disp(' ')
disp('�@----- P �̎�����s�񎮁i���ׂĐ��Ȃ�Q�߈���j -----')
det(P(1:1,1:1))
det(P(1:2,1:2))

disp(' ')
disp('----- A �̌ŗL�l�i���������ׂĕ��Ȃ�Q�߈���j -----')
disp('....... det(s*I - A)')
eq = det(s*eye(2) - A)
disp(' ')
disp('....... det(s*I - A) = 0 �̉��iA �̌ŗL�l�j')
solve(eq,s)

disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s
syms p11 p12 p13 p22 p23 p33

A = [ 0  1  0
      0  0  1
     -1 -3 -3 ]

disp(' ')
disp('----- ���A�v�m�t������ P*A + A''*P = - I -----')
disp('-----   ===> M = P*A + A''*P + I = 0    -----')
P = [ p11  p12  p13
      p12  p22  p23 
      p13  p23  p33 ];
M = P*A + A'*P + eye(3)
[p11 p12 p13 p22 p23 p33] = solve(M(1,1)==0, M(1,2)==0, M(1,3)==0, M(2,2)==0, M(2,3)==0, M(3,3)==0, ...
                                    {p11, p12, p13, p22, p23, p33});

disp(' ')
disp('----- ���A�v�m�t�������̉� P�i���������j-----')
P = [ p11  p12  p13
      p12  p22  p23 
      p13  p23  p33 ]

disp(' ')
disp('----- P �̎�����s�񎮁i���ׂĐ��Ȃ�Q�߈���j -----')  
det(P(1:1,1:1))
det(P(1:2,1:2))
det(P(1:3,1:3))

disp(' ')
disp('----- A �̌ŗL�l�i���������ׂĕ��Ȃ�Q�߈���j -----')
disp('....... det(s*I - A)')
eq = det(s*eye(3) - A)
disp(' ')
disp('....... det(s*I - A) = 0 �̉��iA �̌ŗL�l�j')
solve(eq,s)

disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('��� 7.3 (3)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms s p11 p12 p22

A = [ 0  1
      4  3 ]

disp(' ')
disp('----- ���A�v�m�t������ P*A + A''*P = - I -----')
disp('-----   ===> M = P*A + A''*P + I = 0    -----')
P = [ p11  p12
      p12  p22 ];
  
M = P*A + A'*P + eye(2)
[p11 p12 p22] = solve(M(1,1)==0, M(1,2)==0, M(2,2)==0, {p11, p12, p22});

disp(' ')
disp('----- ���A�v�m�t�������̉� P�i���������j-----')
P = [ p11  p12
      p12  p22 ]

disp(' ')
disp('----- P �̎�����s�񎮁i���ׂĐ��Ȃ�Q�߈���j -----')
det(P(1:1,1:1))
det(P(1:2,1:2))

disp(' ')
disp('----- A �̌ŗL�l�i���������ׂĕ��Ȃ�Q�߈���j -----')
disp('....... det(s*I - A)')
eq = det(s*eye(2) - A)
disp(' ')
disp('....... det(s*I - A) = 0 �̉��iA �̌ŗL�l�j')
solve(eq,s)
