% Creates a new animated figure from data, displays it and saves it to a gif.
function  plot2gif(fig_num, x, y, fig_title, x_label, y_label, output_filename, plot_style) 
    f = figure(fig_num);
    line = animatedline(x(1), y(1), plot_style{:});
    hold on;
    
    x_lim = [min(x), max(x)];
    y_lim = [min(y), max(y)];  

    for i  = 1:numel(x)
        addpoints(line, x(i), y(i))
        title(fig_title);
        xlim(x_lim);
        ylim(y_lim);
        xlabel(x_label);
        ylabel(y_label);    
        grid on;
        drawnow;
        
        im = frame2im(getframe(f));
        [imind, cm] = rgb2ind(im, 256);
        if i == 1
            imwrite(imind, cm, output_filename, "gif", "Loopcount", inf );
        else
            imwrite(imind, cm, output_filename, "gif", "WriteMode", "append" );
        end
    end
    hold off;
end