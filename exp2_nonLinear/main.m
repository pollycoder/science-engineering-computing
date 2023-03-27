%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solutions to non-linear equations
% 1. Two functions
% 2. Steffensen acceleration
% 3. Newton
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
% Initial result
X1=0;
X2=1;
X3=1;
X4=1;
X5=1;

% Direct functions
[X1,step]=directIter_noConv(@cube,X1);




% Original function
function y=cube(x)
y=x.^3+2.*x.^2+10.*x-20;
end
