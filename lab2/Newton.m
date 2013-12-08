function y = Newton( f,df,d,e, x0 )
    digits(d);
    previous = feval(f,x0,d);
    for i=1:10000
        x0=vpa(x0- vpa(feval(f,x0,d))/vpa(feval(df,x0,d)));
        if(subs(abs(previous-feval(f,x0,d))) < e)
            i
            break;
        end
        previous=feval(f,x0,d);
    end
    y=x0;
end

