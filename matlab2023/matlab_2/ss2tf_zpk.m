clear
format compact

state_space

tf_P = tf(ss_P)
zpk_P = zpk(ss_P)

[numP,denP] = tfdata(tf_P,'v')
[z,p,k] = zpkdata(zpk_P,'v')