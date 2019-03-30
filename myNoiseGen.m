function y = myNoiseGen(num_samples,w, noise_type)
% Noise Generator
% ~ generates dither noises with different pdfs: rectangular, triangular, and high-pass
% filtered triangular.

del = 1/(2^(w-1));
r = rand(num_samples,1);
t = (rand(num_samples,1)-rand(num_samples,1));

if strcmp(noise_type,'rect') == 1
    minA = -del/2;
    maxA = del/2;
    
    y = minA + (maxA-minA) .* r;
    
    elseif strcmp(noise_type,'tri')==1 
    minA = -del;
    maxA = del;
    
    y = minA + (maxA-minA) .* t;
    
elseif strcmp(noise_type,'hp')== 1
    minA = -del;
    maxA = del;
    
    y = minA + (maxA-minA)*(0.5.*(diff(t)));

end

