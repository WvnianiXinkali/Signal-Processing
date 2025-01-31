function [ shiftedSginalFrequency ] = frequencyShift(frequency, v, v0, vs, cs0, css, shemtxveva)
    if shemtxveva == 1 
    shiftedSginalFrequency = frequency * (v + v0 * cs0) / (v + vs * css);
    else
    shiftedSginalFrequency = frequency * (v + v0 * cs0) / (v - vs * css);
    end
end

