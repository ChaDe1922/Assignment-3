function [y] = myQuantize(x,w)
%Simple Quantizer
%   Quantize input 'x' using word-length 'w'
%

b = w;
q = 2^(b-1)-1;

[y] = round(x*q)/q; 
end

