close all

clear
format compact

sim('example_R2018a')
% sim('example_R2020a')
% sim('example_R2023a')

figure(1)
plot(t,y)
