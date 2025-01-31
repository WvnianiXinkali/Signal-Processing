function [noiseSignal] = addNoise(signal)
% 
% S = 10000;
% n = 1:S;
% w = pi / 4;
% signal =  cos(w * n);

noise = randn(1, length(signal));
noised = signal + noise;
noiseSignal = awgn(signal, 0.000001);

end

