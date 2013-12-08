function f = zad2aREV_SNGL(s,n)

    f=0;
    for k=n:-1:1
        f=single(f+single(1/(single(k^s))));
    end

end

