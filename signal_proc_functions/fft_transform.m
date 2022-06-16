function [f, Y1] = fft_transform(y, sample_rate, varargin)

    L = length(y, varargin{:});
    Y2 = fft(y);
    Y1 = Y2(1:L/2+1);
    Y1(2:end-1) = 2 * Y1(2:end-1);
    f = sample_rate * (0:(L/2))/L;



end



