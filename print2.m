function result = print( f )
result=zeros(5,5);
s=[2,3.6667,5,7.2,10];
n=[50,100,200,500,1000];

for i = 1:5
    for j = 1:5
        result(i,j)=feval(f,s(i),n(j));
    end
end

end

