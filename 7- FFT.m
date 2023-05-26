% Define the input signal
x = [1 2 3 4];

% Compute FFT
X = fft(x);

% Compute the two-sided spectrum
X_mag = abs(X); % Magnitude spectrum
X_phase = angle(X); % Phase spectrum

% Compute the one-sided spectrum (excluding the negative frequencies)
N = length(x); % Length of the input signal
X_mag_one_sided = X_mag(1:N/2+1);
X_phase_one_sided = X_phase(1:N/2+1);

% Compute the frequency axis for plotting
Fs = 1; % Sampling frequency (assuming 1 sample per unit time)
f = (0:N/2)*(Fs/N);

% Plotting the magnitude spectrum
subplot(2, 1, 1);
stem(f, X_mag_one_sided);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum');

% Plotting the phase spectrum
subplot(2, 1, 2);
stem(f, X_phase_one_sided);
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
title('Phase Spectrum');
