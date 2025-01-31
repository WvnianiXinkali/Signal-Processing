function [distance] = timeFromRecording(signal, recording)


fftSignal = abs(fft(signal));
maxFreq = find(fftSignal == max(fftSignal));
for i = 1 : length(signal) : (length(recording)-length(signal))
      maxFFReq = find(abs(fft(recording(i : i + length(signal)))) == max(abs(fft(recording(i : i + length(signal))))));
%       retard = (max(abs(fft(recording(i : i + length(signal))))));
%       kk = mean(recording(max([(i + maxFFReq(1) - 10) i]): min([(i + maxFFReq(1) + 10) i])))*5;

      fftrec = abs(fft(recording(i : i + length(signal))));
      if (maxFFReq(1) < (maxFreq(1) + 10)) && (maxFFReq(1) > (maxFreq(1) - 10)) && ((mean(abs(fft(recording))) * 5) < max(fftrec)) 
          distance = 1/100 * (floor(i / length(signal)));
          break;
      end
end

end

