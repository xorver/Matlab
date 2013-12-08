function y = Fs(x0,r,n)
    y=x0;
    for i=1:n
        y=single(r*y*(1-y));
    end
end