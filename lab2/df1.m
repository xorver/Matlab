function y = df1( x,d )
    digits(d);
    y=vpa(vpa(cos(x)*sinh(x)) - vpa(sin(x)*cosh(x)));
end

