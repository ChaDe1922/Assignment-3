function y = myNoiseGen(num_samples,w, noise_type)
% Noise Generator
% ~ generates dither noises with different pdfs: rectangular, triangular, and high-pass
% filtered triangular.

del = 1/(2^(w-1));                                      % Delta
r = rand(num_samples,1);                                % Random noise w. rectangular pdf
t = (rand(num_samples,1)-rand(num_samples,1));          % random noise w. triangular pdf

if strcmp(noise_type,'rect') == 1                       % str check
    minA = -del/2;                                      % min amplitude
    maxA = del/2;                                       % max amplitude
    
    y = minA + (maxA-minA) .* r;                        % generate rectangular noise
    
    elseif strcmp(noise_type,'tri')==1                  % str check
    minA = -del;                                        % min amp
    maxA = del;                                         % max amp 
    
    y = minA + (maxA-minA) .* t;                        % generate triangular noise
    
elseif strcmp(noise_type,'hp')== 1                      % str check
    minA = -del;                                        % min amp
    maxA = del;                                         % max amp
    
    y = minA + (maxA-minA)*(0.5.*(diff(t)));            % generate hp filter nosie

end

