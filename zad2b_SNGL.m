function f = zad2b_SNGL(s,n)
    f=0;
    for k=1:n
        f=single(f+single((-1)^(k-1) * single(1/(single(k^s)))));
    end
end

