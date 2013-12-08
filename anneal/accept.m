function acceptpoint = accept(optimValues,newx,newfval)
    if newfval > optimValues.bestfval && 100*rand()>optimValues.temperature(1,1)
        acceptpoint = false;
    else
        acceptpoint = true;
    end
end
