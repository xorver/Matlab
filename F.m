function y = F(x0,r,n)
    y=x0;
    for i=1:n
        y=r*y*(1-y);
    end
end

