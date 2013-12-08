function y = Sieczne( f,d,e, x0,x1 )
    digits(d);
    previous = feval(f,x0,d);
    for i=1:10000
        x0=vpa(x1- vpa(feval(f,x1,d)*vpa(x1-x0))/vpa(feval(f,x1,d)-feval(f,x0,d)));
        tmp=x1;
        x1=x0;
        x0=tmp;
        if(subs(abs(previous-feval(f,x0,d))) < e)
            i
            break;
        end
        previous=feval(f,x0,d);
    end
    y=x0;
end