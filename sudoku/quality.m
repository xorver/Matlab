function q = quality( sudoku )
%returns sudoku quality (0=best)
    q=0;
    for i=1:9
        q=q+9-size(unique(sudoku(i,:,1)),2);
        q=q+9-size(unique(sudoku(:,i,1)),1);
    end

end

