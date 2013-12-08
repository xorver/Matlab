function y = f3( x,d )
    digits(d);
    y=vpa(2^vpa(-x)+vpa(exp(vpa(x))) + 2*vpa(cos(x)) - 6);
end

