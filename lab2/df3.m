function y = df3( x,d )
    digits(d);
    y=vpa(vpa(exp(x))-vpa(2^(-x))* vpa(log(2))-vpa(2*sin(x)));
end
