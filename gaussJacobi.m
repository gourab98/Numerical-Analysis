function ret = gaussJacobi (A, B)
  
  [m,n] = size(A);
  for i = 1:m
    diag(i) = A(i,i);
    rest(i,:) = [A(i,1:i-1) A(i,i+1:n)];
    row_sum = sum(abs(rest(i,:)));
    if (abs(diag(i)) <= row_sum)
      ret = 'Dominance Condition Fails';
      return;
    end
  end
  
  X = zeros(1,n);
  retval(1,:) = X;
  for i = 2:50
    for j = 1:n
      Xrest = [X(1:j-1) X(j+1:n)];
      ret(i,j) = (B(j) - rest(j,:)*Xrest')/diag(j);
    endfor
    if(abs(X(1) - ret(i,1)) <0.0001)
    ret(i,:) = X;
    break;
    end
    X = ret(i,:);
  end  
  
endfunction


