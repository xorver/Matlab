function y = F3(x0,r)
    a=zeros(200);
    a(1)=x0;
    for i=2:200
        a(i)=r*a(i-1)*(1-a(i-1));
    end
    y=1;
    plot(1:200,a);
end


