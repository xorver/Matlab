sudoku=load('data.txt')

mask = ceil (sudoku ./ (sudoku+1));
sudoku(1:3,1:3)=fillIt(sudoku(1:3,1:3));
sudoku(1:3,4:6)=fillIt(sudoku(1:3,4:6));
sudoku(1:3,7:9)=fillIt(sudoku(1:3,7:9));
sudoku(4:6,1:3)=fillIt(sudoku(4:6,1:3));
sudoku(4:6,4:6)=fillIt(sudoku(4:6,4:6));
sudoku(4:6,7:9)=fillIt(sudoku(4:6,7:9));
sudoku(7:9,1:3)=fillIt(sudoku(7:9,1:3));
sudoku(7:9,4:6)=fillIt(sudoku(7:9,4:6));
sudoku(7:9,7:9)=fillIt(sudoku(7:9,7:9));
arg = zeros(9,9,2);
arg(:,:,1)=sudoku;
arg(:,:,2)=mask;