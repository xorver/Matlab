function y = fillIt( x )
%fill empty spaces
    occured=zeros(1,10);
    g=x(:);
    for i=1:9
        if g(i)~=0
            occured(g(i))=1;
        end
    end
    k=1;
    for i=1:3
        for j=1:3
            while k<=9 && occured(k)==1
                k=k+1;
            end
            if x(i,j)==0
                x(i,j)=k;
                k=k+1;
            end
        end
    end
    y=x;

end

