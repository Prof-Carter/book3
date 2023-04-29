disp('++++++++++++++++++++++++++++++')
disp('�� 6.3 (1)')
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
disp('----- �ϑ��s�� Vo ------')
Vo = [  c
       c*A ]

disp(' ')
disp('----- |Vo| ------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end


disp(' ')
disp(' ')
disp('++++++++++++++++++++++++++++++')
disp('�� 6.3 (2)')
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
disp('----- �ϑ��s�� Vo ------')
Vo = [  c
       c*A ]

disp(' ')
disp('----- |Vo| ------')
det_Vo = det(Vo)

if det_Vo ~= 0
    disp('�ϑ��ł���')
else
    disp('�ϑ��ł͂Ȃ�')
end