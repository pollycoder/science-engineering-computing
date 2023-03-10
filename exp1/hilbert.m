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
for n=10:15
    % Hilbert matrix
    % Size: n x n
    gaussH=hilb(n);
    choleH=hilb(n);
    tikhoH=hilb(n);
    conjgradH=hilb(n);
    gmresH=hilb(n);
    
    % X, size: n x 1
    X=ones([n,1]);
    gauss_bn=gaussH*X;
    chole_bn=choleH*X;
    tikho_bn=tikhoH*X;
    conjgrad_bn=conjgradH*X;
    gmres_bn=gmresH*X;

    fprintf("n=%d\n", n);
    
    % Solve in gauss elimination solution
    [Y1]=gauss(gaussH,gauss_bn,n);
    fprintf("Y1=\n");
    disp(Y1);
    

    % Solve in Cholesky Factorization
    Y2=cholesky(choleH,chole_bn,n);
    fprintf("Y2=\n");
    disp(Y2);

    % Solve in Tikhonov Regularization
    Y3=tikhonov(tikhoH,tikho_bn,n);
    fprintf("Y3=\n");
    disp(Y3);

    % Solve in Conjugate Gradient Methods
    Y4=cgs(conjgradH,conjgrad_bn,9.3e-10);
    fprintf("Y4=\n");
    disp(Y4);

    % Solve in GMRES Methods
    Y5=gmres(gmresH,gmres_bn);
    fprintf("Y5=\n");
    disp(Y5);
end






