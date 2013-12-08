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

