function y = Bisekcja( f, d, e, a0, b0)
    iterations = ceil(log((b0-a0)/e)/log(2))
    digits(d)
    for i=1:iterations 
        c0=vpa((a0+b0)/2.0);
        if(subs(vpa(feval(f,a0,d)*feval(f,c0,d)))<0)
            b0=c0;
        else
            a0=c0;
        end
        y=vpa((a0+b0)/2);
    end
end

