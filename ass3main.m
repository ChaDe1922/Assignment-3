%%Assignment 3 Main Script. Call Functions, Generate Plots.

r = myNoiseGen(44100,4,'rect');

% hist(rec);
% title('Rectangular Noise Historgram');
% xlabel('Amplitude Values');
% ylabel('Occurences')
% axis tight
fs = 44100;
L = length(r);
L2 = ceil(L/2);

R = fft(r);
Rabs = abs(r);
r_bins = (0:L-1)';
r_Hz = r_bins * fs/L;

plot(r_Hz(1:L2), Rabs(1:L2))

%tri = myNoiseGen(44100,4,'tri');
%hp = myNoiseGen(44100,4,'hp');