function plot_signal(signal, sample_rate, time_axis_unit, varargin)
    
    if strcmp(time_axis_unit, 'sec')
        time_axis = (0:length(signal)-1)/sample_rate;

    elseif strcmp(time_axis_unit, 'min')
        time_axis = (0:length(signal)-1)/sample_rate/60;

    elseif strcmp(time_axis_unit, 'ms')
        time_axis = (0:length(signal)-1)/sample_rate * 1000;
    end


    plot(time_axis, signal, varargin{:})
    xlabel(['Time (', time_axis_unit, ')'])
    xlim([0, time_axis(end)])
    
end
