% Creates a new animated figure from data, displays it and saves it to a gif.
function  plot2gif(fig_num, x, y, fig_title, x_label, y_label, output_filename, plot_style) 
    f = figure(fig_num);
    axis tight manual;
    grid on;
    
    title(fig_title);
    xlabel(x_label);
    ylabel(y_label);

    for i  = 1:numel(x)
        
        plot(x(i), y(i), plot_style{:});
        drawnow;
        
        im = frame2im(getframe(f));
        [imind, cm] = rgb2ind(im, 256);
        if i == 1
            imwrite(imind, cm, output_filename, "gif", "Loopcount", inf );
        else
            imwrite(imind, cm, output_filename, "gif", "WriteMode", "append" );
        end

    end
end