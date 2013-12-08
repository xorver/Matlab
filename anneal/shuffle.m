function W = shuffle(optimValues,problem)
    W=optimValues.x;
    swaps=ceil(optimValues.temperature(1,1)*size(W,2)/500); %TMP_PERC swaps
    for i=1:swaps
        a=randi(size(W,2));
      %  b=randi(size(W,2));
        b=randi( [ max( 1,-3+int32(a-ceil( size(W,2)*double(optimValues.temperature(1,1)/10))) ) , min( size(W,2),3+int32(a + ceil( size(W,2)*double(optimValues.temperature(1,1)/10) )) ) ] );
        tmp =W(:,a);
        W(:,a)=W(:,b);
        W(:,b)=tmp;
    end
    
end

