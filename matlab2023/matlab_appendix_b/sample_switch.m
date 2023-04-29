for i = -1:0.5:1
  switch sign(i)
    case -1
      fprintf('i = %fF•‰‚Ì”\n', i);
    case 1
      fprintf('i = %fF³‚Ì”\n', i);
    otherwise
      fprintf('i = %fF—ë\n', i);
    end
end
