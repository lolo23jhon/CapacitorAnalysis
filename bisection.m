function [x, y, err] = bisection(f, domain, num_epochs)

    x = (domain(1) + domain(2))/2;
    y = f(root_x);
    err = abs(root_y);

    for i = 1:num_epochs
        y_a = f(a);
        y_m = f(root_x);

        if (t_a * y_m) > 0
            a = root_x;
        else
            b = root_x;
        end

        x = (a+b)/2;
        y = f(root_x);
        err = abs(root_y);
    end
end