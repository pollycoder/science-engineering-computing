%%%%%%%%%%%%%%%%%%%%%%%%%
% Tikhonov regularization
%%%%%%%%%%%%%%%%%%%%%%%%%
function [x]=tikhonov(A,b,n)
    alpha=0.00000001;
    regular_A=alpha*eye(n)+A'*A;
    regular_b=A'*b;
    x=regular_A\regular_b;
end