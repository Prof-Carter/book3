clear
format compact

tf_P = tf(4*[1 2],[1 3 4 2])

ss_P = ss(tf_P);
[A,B,C,D] = ssdata(ss_P)