function y = f1( x,d )
    digits(d);
    y=vpa(vpa(cos(x))*vpa(cosh(x))-1);
end

