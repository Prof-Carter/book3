clear
format compact

A = [  0  1
     -10 -1 ];
B = [ 0
      1 ];

Q = diag([ 300  60 ]);
R = 1;

n = 2;

H = [ A  -B*inv(R)*B'
     -Q       -A'    ]

[V Lambda] = eig(H)

num = 0;
for i = 1:2*n
  if real(Lambda(i,i)) < 0
    num = num + 1;
    V1(1:n,num) = V(  1:n,  i);
    V2(1:n,num) = V(n+1:2*n,i);
  end
end

V1, V2
P = V2/V1