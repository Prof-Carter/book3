disp('--- M1, M2 ‚ªŒöÌ’l‚Ì N ”{ ---');
N = input('N = ');

M1v = N*M1;  M2v = N*M2;

Av = [    0       1       0       0
       -k/M1v -mu/M1v   k/M1v  mu/M1v
          0       0       0       1
        k/M2v  mu/M2v  -k/M2v -mu/M2v ];
Bv = [  0
      1/M1v
        0
        0  ];
x0 = [-0.5; 0; 0.5; 0];

