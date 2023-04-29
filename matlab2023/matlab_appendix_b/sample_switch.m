for i = -1:0.5:1
  switch sign(i)
    case -1
      fprintf('i = %f：負の数\n', i);
    case 1
      fprintf('i = %f：正の数\n', i);
    otherwise
      fprintf('i = %f：零\n', i);
    end
end
