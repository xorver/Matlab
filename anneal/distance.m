function s = distance( w )
    s=0;
    for i=2:size(w,2)
        s=s+sqrt((w(1,i-1)-w(1,i))^2 + (w(2,i-1)-w(2,i))^2);
        %s=s+ODL(w(3,i-1),w(3,i));
    end

end

