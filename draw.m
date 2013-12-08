function y = draw( F1,F2,x0,n )
    x=zeros(500);
    y=zeros(500);
    for i=1:500
        x(i)=(3.75+0.001*i);
        y(i)=feval(F1,x0,x(i),n);
    end
   a=zeros(500);
   b=zeros(500);
   for i=1:500
        a(i)=(3.75+0.001*i);
        b(i)=feval(F2,x0,a(i),n);
   end

    plot(x,y,'^',a,b,'*');
end

