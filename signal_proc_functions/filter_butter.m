% Filters matrix of signals using butterworth filter
% Filters across rows (i.e. rows = channels) 
% If two frequencies provided, default to bandpass. If only one frequency,
% must specify whether high or low pass. 

function [filtered_signals] = filter_butter_filter_function(signals, freq, sample_rate, filter_order, varargin)


    nyquist_freq = sample_rate/2;
    
    % Design filter
    [b, a] = butter(filter_order, freq/nyquist_freq, varargin{:});
    
    % Allocate
    filtered_signals = zeros(size(signals));
    
    % Filter across rows 
    for i = 1:size(signals,3)
        
        filtered = filter(b, a, signals(:,:,i)');
        filtered_signals(:,:,i) = filtered';
    end

end