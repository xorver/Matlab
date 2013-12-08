function f = zad2a_SNGL(s,n)
    %dzeta pojedyncza precyzja
    f=0;
    for k=1:n
        f=single(f+single(1/(single(k^s))));
    end
end

