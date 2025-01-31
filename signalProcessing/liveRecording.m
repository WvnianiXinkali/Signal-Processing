function [recording] = liveRecording(signal, d)

recording = [0.001*randn(1, length(signal) * (floor(d* 100))) signal 0.001 * randn(1, length(signal) * (floor(d)))];

end

