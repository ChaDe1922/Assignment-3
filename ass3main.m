%%Assignment 3 Main Script. Call Functions, Generate Plots.

%%
r = myNoiseGen(44100,4,'rect');

figure
subplot(2,1,1);
hist(r);
title('Rectangular Noise Historgram');
xlabel('Amplitude Values');
ylabel('Occurences')

fs = 44100;
L = length(r);
L2 = ceil(L/2);

R = fft(r);
Rabs = abs(r);
r_bins = (0:L-1)';
r_Hz = r_bins * fs/L;

subplot(2,1,2); 
plot(r_Hz(1:L2), Rabs(1:L2))
title('Rectancular Noise Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

sgtitle('Rectangular Noise Visualizations')

%%

t = myNoiseGen(44100,4,'tri');

figure
subplot(2,1,1)
hist(t);
title('Triangular Noise Historgram')
xlabel('Amplitude Values')
ylabel('Occurences')
axis tight

M = length(t);
M2 = ceil(M/2);

T = fft(t);
Tabs = abs(t);
t_bins = (0:M-1)';
t_Hz = t_bins * fs/M;

subplot(2,1,2)
plot(t_Hz(1:M2), Tabs(1:M2))
title('Triangular Noise Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
axis tight

sgtitle('Triangular Noise Visualizations')

%%

hp = myNoiseGen(44100,4,'hp');

figure
subplot(2,1,1)
hist(hp);
title('Triangular High-Pass Filter Noise Historgram')
xlabel('Amplitude Values')
ylabel('Occurences')
axis tight

fs = 44100;
N = length(hp);
N2 = ceil(N/2);

HP = fft(hp);
HPabs = abs(hp);
hp_bins = (0:N-1)';
hp_Hz = hp_bins * fs/N;

subplot(2,1,2)
plot(hp_Hz(1:N2), HPabs(1:N2))
title('Triangular HP Filter Noise Magnitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('Magnitude')
axis tight

sgtitle('Triangular HP Filter Noise Visualizations')