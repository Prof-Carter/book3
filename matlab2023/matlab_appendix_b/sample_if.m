for i = -1:0.5:1
  if i < 0
    fprintf('i = %f：負の数\n', i);
  elseif i > 0
    fprintf('i = %f：正の数\n', i);
  else
    fprintf('i = %f：零\n', i);  
  end
end
