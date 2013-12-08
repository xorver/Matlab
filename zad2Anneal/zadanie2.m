function [xx,x]= zad2(n,ro,iter,generate,matrix)
    if generate
        xx=generateImage(n,ro);
    else
        xx=matrix;
    end
    
    options = saoptimset('ReannealInterval',10000,'MaxIter',iter,'AnnealingFcn',@changeImage);%,'PlotFcns',{@saplotbestf,@saplottemperature,@saplotf,@saplotstopping});
    [x,fval] = simulannealbnd(@imageValue1,xx,0,1,options);
    fval
    
end



function I = changeImage(optimValues,problem)
    I=optimValues.x;
    n=size(I,1);
    swaps = ceil((n * optimValues.temperature(1,1)/100.0)/2);
    for i=1:swaps
        a1=randi(n);
        a2=randi(n);
        b1=randi(n);
        b2=randi(n);
        %b1=randi( [ max( 1,int32(a1-ceil( n*double(optimValues.temperature(1,1)/10))) ) , min( n,int32(a1 + ceil( n*double(optimValues.temperature(1,1)/10) )) ) ] );
        %b2=randi( [ max( 1,int32(a2-ceil( n*double(optimValues.temperature(1,1)/10))) ) , min( n,int32(a2 + ceil( n*double(optimValues.temperature(1,1)/10) )) ) ] );
        tmp=I(a1,a2);
        I(a1,a2)=I(b1,b2);
        I(b1,b2)=tmp;
    end
end

function value = imageValue1( I )
    n=size(I,1);
    value=0;
    for i=1:n
        for j=1:n
            if (i-1>=1 && I(i-1,j)==I(i,j))
                value=value+1;
            end
            if (i+1<=n && I(i+1,j)==I(i,j))
                value=value+1;
            end
            if (j-1>=1 && I(i,j-1)==I(i,j))
                value=value+1;
            end 
            if (j+1<=n && I(i,j+1)==I(i,j))
                value=value+1;
            end           
        end
    end
end

function I = generateImage( n,ro )
    I=ones(n);
    for i=1:n
        for j=1:n
            if(rand()<ro)
                I(i,j)=0;
            end
        end
    end
end

