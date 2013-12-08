function value = imageValue2( I )
    n=size(I,1);
    value=0;
    for i=1:n
        for j=1:n
            %gora
            if (i-1>=1 && I(i-1,j)~=I(i,j))
                value=value+1;
            end
            %gora-prawa
            if (i-1>=1 && j+1<=n && I(i-1,j+1)==I(i,j))
                value=value+1;
            end
            %prawa
            if (j+1<=n && I(i,j+1)==I(i,j))
                value=value+1;
            end  
            %prawa-dol
            if (j+1<=n && i+1<=n && I(i+1,j+1)==I(i,j))
                value=value+1;
            end  
            %dol
            if (i+1<=n && I(i+1,j)~=I(i,j))
                value=value+1;
            end
            %dol-lewo
            if (i+1<=n && j-1>=1 && I(i+1,j-1)==I(i,j))
                value=value+1;
            end
            %lewo
            if (j-1>=1 && I(i,j-1)==I(i,j))
                value=value+1;
            end 
            %lewo-gora
            if (i-1>=1 && j-1>=1 && I(i-1,j-1)==I(i,j))
                value=value+1;
            end 
        end
    end
end

