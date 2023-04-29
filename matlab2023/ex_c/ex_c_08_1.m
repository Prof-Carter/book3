disp('++++++++++++++++++++++++++++++')
disp('–â‘è C.8 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

P = [ 2        sqrt(2)
      sqrt(2)  3       ] 

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

