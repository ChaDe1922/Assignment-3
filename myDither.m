function y = myDither(x,w,noise_type)
%Generate and add dither noise to a signal,x, and quantize it
%  
num_samples = length(x);                                        % samples for noise same length as input
d_noise = myNoiseGen(num_samples,w,noise_type);                 % generate noise same length as input
x_noise = x + d_noise;                                          % add noise to input signal

y = myQuantize(x_noise,w);                                      % quantize noisy input signal.
end

