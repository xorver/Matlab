function f = zad2b(s,n)
    f=0;
    for k=1:n
        f=f+(-1)^(k-1) * 1/(k^s);
    end
end

