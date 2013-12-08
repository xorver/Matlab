function new = changeSudoku( optimValues,problem )
%generate new sudoku
    new=optimValues.x;
    swaps=ceil(30 * optimValues.temperature(1,1)/100.0);
    while swaps>0
        offset = [0,3,6];
        o1=offset(randi(3));
        o2=offset(randi(3));
        a1=o1+randi(3);
        a2=o2+randi(3);
        b1=o1+randi(3);
        b2=o2+randi(3);
        if (new(a1,a2,2)==0 && new(b1,b2,2)==0)
            tmp=new(a1,a2,1);
            new(a1,a2,1)=new(b1,b2,1);
            new(b1,b2,1)=tmp;
            swaps=swaps-1;
        end
    end
end

