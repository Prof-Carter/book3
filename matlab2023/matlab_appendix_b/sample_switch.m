for i = -1:0.5:1
  switch sign(i)
    case -1
      fprintf('i = %f�F���̐�\n', i);
    case 1
      fprintf('i = %f�F���̐�\n', i);
    otherwise
      fprintf('i = %f�F��\n', i);
    end
end
