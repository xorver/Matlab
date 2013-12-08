function y = df2( x,d )
    digits(d);
    y=vpa(vpa(-1/vpa(x^2))-vpa((vpa(sec(x)))^2));
end
