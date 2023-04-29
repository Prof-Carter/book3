disp('++++++++++++++++++++++++++++++')
disp('—á C.11')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2  1
      1  2 ] 

n = length(P);


disp(' ')
disp('--- ‘ÎÌs—ñ P ‚ÌŒÅ—L’l ---------')
lambda = eig(P)

disp(' ')
if lambda > 0
    disp('P ‚Í³’è‚Å‚ ‚é')
else
    disp('P ‚Í³’è‚Å‚Í‚È‚¢')
end
