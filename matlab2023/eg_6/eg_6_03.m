disp('++++++++++++++++++++++++++++++')
disp('—á 6.3 (1)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms J mu

A = [ 0   1
      0 -mu/J ];
b = [  0
      1/J ];
c = [ 1  0 ];

disp(' ')
disp('----- ‰ÂŠÏ‘ªs—ñ Vo ------')
Vo = [  c
       c*A ]

disp(' ')
disp('----- |Vo| ------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('‰ÂŠÏ‘ª‚Å‚ ‚é')
else
    disp('‰ÂŠÏ‘ª‚Å‚Í‚È‚¢')
end


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('—á 6.3 (2)')
disp('++++++++++++++++++++++++++++++')

clear
format compact

syms J mu

A = [ 0   1
      0 -mu/J ];
b = [  0
      1/J ];
c = [ 0  1 ];

disp(' ')
disp('----- ‰ÂŠÏ‘ªs—ñ Vo ------')
Vo = [  c
       c*A ]

disp(' ')
disp('----- |Vo| ------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('‰ÂŠÏ‘ª‚Å‚ ‚é')
else
    disp('‰ÂŠÏ‘ª‚Å‚Í‚È‚¢')
end