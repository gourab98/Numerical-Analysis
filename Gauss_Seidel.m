a = [10,-2,1;-3,11,2;1,-1,5];
b = [2;5;1];
n = length(b);
x = zeros(n,1);
iterlimit = 100;
tol = 0.00001;

for iteration = 1 : iterlimit
  convergence = true;
  for i = 1 : n  
    Sum = 0;
    for j = 1 : n 
      if j ~= i
        Sum = Sum + a(i,j)*x(j);
      end
    end
    temp=x(i);
    x(i) = -1/a(i,i) * (Sum - b(i));
    if abs(temp - x(i)) > tol
      convergence = false;
    end
  end
  if convergence
    break
  end
end
iteration
disp('Solved');