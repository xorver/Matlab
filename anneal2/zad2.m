function [xx,x]= zad2(n,ro,iter,generate,matrix)
    if generate
        xx=generateImage(n,ro);
    else
        xx=matrix;
    end
    options = saoptimset('ReannealInterval',10000,'MaxIter',iter,'AnnealingFcn',@changeImage);%,'PlotFcns',{@saplotbestf,@saplottemperature,@saplotf,@saplotstopping});
    [x,fval] = simulannealbnd(@imageValue2,xx,0,1,options);
    fval
end