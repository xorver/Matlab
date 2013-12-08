function f = zad2bREV(s,n)

    f=0;
    for k=n:-1:1
        f=f+(-1)^(k-1) * 1/(k^s);
    end

end

