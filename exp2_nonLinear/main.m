%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solutions to non-linear equations
% 1. Two functions
% 2. Steffensen acceleration
% 3. Newton
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
% Initial result
X1=1;
X2=1;
X3=1;
X4=1;
X5=1;

% Direct functions
[X1,step1,x1_arr]=directIter_noConv1(@cube,X1);
[X2,step2,x2_arr]=directIter_noConv2(@cube,X2);
[X3,step3,x3_arr]=directIter_Conv(@cube,X3);


% Original function
function y=cube(x)
y=x.^3+2.*x.^2+10.*x-20;
end
