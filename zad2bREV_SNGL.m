function f = zad2bREV_SNGL(s,n)
    f=0;
    for k=n:-1:1
        f=single(f+single((-1)^(k-1) * single(1/(single(k^s)))));
    end
end

