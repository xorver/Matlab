function [xx,x] = zad1(n,iter,generate,matrix)
    options = saoptimset('ReannealInterval',10000,'MaxIter',iter,'AnnealingFcn',@shuffle,'TemperatureFcn',@temperatureexp);%,'PlotFcns',{@saplotbestf,@saplottemperature,@saplotf,@saplotstopping});
    %'ReannealInterval',100000
    if generate
        xx=generatePoints('jednostajny',n);
    else
        xx=matrix;
    end
    %plot(xx(1,:),xx(2,:))
    [x,fval] = simulannealbnd(@distance,xx,0,1,options);
    plot(x(1,:),x(2,:))
    fval
end