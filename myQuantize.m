function y = myQuantize(x,w)
%Simple Quantizer
%   Quantize input 'x' using word-length 'w'

q = 2^(w-1)-1;                                      % set quantizer word length

y = round(x*q)/q;                                   % round values/quantize
y = y/max(abs(y))*(1-eps);                          % normalize audio between -1 and 1

end
