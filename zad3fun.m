function x = zad3fun(iter,s)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
options = saoptimset('ReannealInterval',10000,'MaxIter',iter,'AnnealingFcn',@changeSudoku,'TemperatureFcn',@temperatureexp);
[x,fval] = simulannealbnd(@quality,s,0,1,options);
fval
end

