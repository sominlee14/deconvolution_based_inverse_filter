function normed_signal = norm_z(signals)
    
    zeroed_signals = signals - mean(signals,2);

    normed_signal = zeroed_signals / std(zeroed_signals(:));

end
