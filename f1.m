function y = f1(x,n)
    y=0;
    for i=1:n
        y=y+(-1)^(i+1)*(x^(2*i+1))/factorial(2*i+1);
    end
end

