k = input('k = ?\n');
  
for i = 0:0.1:1
  fprintf('i = %f\n', i); 
  if i > k
    fprintf('ループから脱出：k = %f\n', k); 
    break;     
  end
end
