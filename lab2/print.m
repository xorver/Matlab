function m = print( d,e )

    m(1) = Bisekcja('f1',d,e,3.0/2*pi,2*pi);
    m(2) = Bisekcja('f2',d,e,0,pi/2);
    m(3) = Bisekcja('f3',d,e,1,3);

end

