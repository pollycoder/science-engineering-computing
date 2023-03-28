%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Direct functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [x,steps,e,time]=directIter_Conv(fun,x0,tol,max_iter)
time=tic;
ifconv=false;
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
    y0=20-10*x0-2*x0^2;
    if sign(y0)==-1
        x0=-power(abs(20-10*x0-2*x0^2),1/3);
    else
        x0=power(20-10*x0-2*x0^2,1/3);
    end
    sol=feval(fun,x0);
    e=abs(sol);
    if e<tol
        ifconv=true;
        break;
    end
end
time=toc(time);
if ifconv
    fprintf("Converged !");
else
    fprintf("Not converged !");
end
x=x0;
end
