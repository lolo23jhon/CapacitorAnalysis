function [index,value] = closesToN(x, n)
    x = abs(x+n) ;
    i = 1;
    closest = x(i);
    for i = 2:numel(x)
        if  x(i) < closest
            closest = x(i)
        end
    end

    index = i;
    value = closest;
end