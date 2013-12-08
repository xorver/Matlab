function W = generatePoints(mode, n )
    W=0;
    if strcmp(mode,'jednostajny')==1
        W=rand(3,n) * 9;
    elseif strcmp(mode,'normalny')
        W=random('Normal',randi(5),randi(5),3,n);
    else
        
    end
    %W(3,:)=1:n;
    %ODL=zeros(n,n);
    %for i=1:n
    %    for j=1:n
    %        ODL(i,j)=sqrt((W(1,i)-W(1,j))^2 + (W(2,i)-W(2,j))^2);
    %    end
    %end
    
end

