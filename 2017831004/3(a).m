function x = Gauss_Seidal( A ,B )
disp ( 'Enter the system of linear equations in the form of AX=B')
A = input ( 'Enter matrix A :   ')

[na , ma ] = size (A);

B = input ( 'Enter matrix B :   ')
 
[nb , mb ] = size (B);


D = diag(diag(A));
L = tril(A)- D;
U = triu(A)- D

t = 2
tol = t*ones(na,1);
k= 1;
 
X( : , 1 ) = X0;
err= 1000000*rand(na,1);
while sum(abs(err)>= tol) ~= zeros(na,1)
    X (:,k+1)= -inv(D+L)*(U)*X(:,k)+inv(D+L)*B;
    err = X( :,k+1) - X( :, k);
    k = k + 1;
    
end
 
fprintf ('The final answer obtained after %g iterations is  \n', k)
X( : ,k)
endfunction