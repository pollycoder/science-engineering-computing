%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Linear equations
% Problem:
%   1. Gauss VS Cholesky and compare the error
%   2. Regularization method --- optimization
%   3. Conjugate gradient methods and GMRES,
%      and compare the result
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear workspace

% Dimension number of the equations
% n can be randomly changed
n=10;

% Hilbert matrix and X
% Size: n x n
H=zeros(n);
X=zeros([n,1]);
for i=1:n
    X(i)=1;
    for j=1:n
        H(i,j)=1/(i+j-1);
    end
end
bn=H*X;


% Solve in gauss elimination solution
[Y1]=gauss(H,bn,n);

% Solve in Cholesky Factorization
L=chol(H);
Y2=L\(L'\bn);







