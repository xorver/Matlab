function I = generateImage( n,ro )
    I=ones(n);
    for i=1:n
        for j=1:n
            if(rand()<ro)
                I(i,j)=0;
            end
        end
    end
end

