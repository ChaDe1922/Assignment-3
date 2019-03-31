function y = myDither(x,w,noise_type)
%Generate and add dither noise to a signal,x, and quantize it
%  
num_samples = length(x);
d_noise = myNoiseGen(num_samples,w,noise_type);
x_noise = x + d_noise;

y = myQuantize(x_noise,w);
end

