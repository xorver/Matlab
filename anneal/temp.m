function temperature = temp( optimValues,options)
    if(optimValues.temperature(1,1) <1)
        temperature =   optimValues.temperature .*   optimValues.temperature;
    else
        temperature =optimValues.temperature - 0.25;
    end
end

