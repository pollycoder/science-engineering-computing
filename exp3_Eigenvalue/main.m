%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eigenvalue calculating
% Jacobi
% QR
% Input: matrix A, error e
% Output: a diagonal matrix - eig-matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear workspace

% Get matrix A and set the error
n=20;
e=1E-5;
A=diag(repmat(2,1,n))...
    +diag(repmat(-1,1,n-1),1)...
    +diag(repmat(-1,1,n-1),-1);

% True value
real=eig(A);

% Jacobi
tic;
[lambda1,times1]=eig_jacobi(A,e,n);
time_j=toc;

% QR
tic
[lambda2,times2]=eig_qr(A,n,e);
time_q=toc;