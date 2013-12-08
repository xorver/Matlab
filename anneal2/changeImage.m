function I = changeImage(optimValues,problem)
    I=optimValues.x;
    n=size(I,1);
    swaps = ceil((n * optimValues.temperature(1,1)/100.0)/2);
    for i=1:swaps
        a1=randi(n);
        a2=randi(n);
        %b1=randi(n);
        %b2=randi(n);
        b1=randi( [ max( 1,int32(a1-ceil( n*double(optimValues.temperature(1,1)/10))) ) , min( n,int32(a1 + ceil( n*double(optimValues.temperature(1,1)/10) )) ) ] );
        b2=randi( [ max( 1,int32(a2-ceil( n*double(optimValues.temperature(1,1)/10))) ) , min( n,int32(a2 + ceil( n*double(optimValues.temperature(1,1)/10) )) ) ] );
        tmp=I(a1,a2);
        I(a1,a2)=I(b1,b2);
        I(b1,b2)=tmp;
    end
end

