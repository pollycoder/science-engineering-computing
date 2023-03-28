%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Direct functions
% Caution: Cannot converge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [x,steps,x_array,e,time]=directIter_noConv(fun,x0,tol,max_iter)
time=tic;
ifconv=false;
x_array=[];
if nargin<4
    max_iter=1000;
end
if nargin<3
    tol=1E-7;
end
steps=0;
sol=feval(fun,x0);
e=abs(sol);
while e>tol && steps<max_iter
    steps=steps+1;
    x0=(20-2.*(x0.^2)-x0.^3)./10;
    sol=feval(fun,x0);
    e=abs(sol);
    x_array(end+1)=x0;
    if e<tol
        ifconv=true;
        break;
    end
end
time=toc(time);
if ifconv
    fprintf("Converged ! Iteration: %d",steps);
else
    fprintf("Not converged !");
end
x=x0;
end
