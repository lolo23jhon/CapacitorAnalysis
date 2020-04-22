function [x, y] = newtonRaphson(f, g, domain, initial_x0, num_epochs, error_tolerance)
    x0 = initial_x0;

    
    x1 = x0 - f(x0)/g(x0);
    x0 = x1
    i = 1;

    while abs(f(x1)) > error_tolerance
        g_x0 = g(x0);     
        f_x0 = f(x0);

        if g_x0 == 0
            fprintf("Math error: g(x0) = 0\n");
            return
        end

        x1 = x0 - f_x0/g_x0;
        x0 = x1
        i = i + 1;

        if i > num_epochs
            fprintf("No convergence.\n");
            break;
        end

    end
    
    x = x1;
    y = f(x1);

end