% Define the input signal
x = [1, 2, 3, 4];

% Compute the DFT
X = fft(x);

% Compute the IDFT
reconstructed_x = ifft(X);

% Plot the original signal
subplot(3, 1, 1);
stem(0:length(x)-1, x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Original Signal');

% Plot the magnitude spectrum (DFT)
subplot(3, 1, 2);
stem(0:length(X)-1, abs(X), 'filled');
xlabel('k');
ylabel('|X(k)|');
title('Magnitude Spectrum (DFT)');

% Plot the reconstructed signal (IDFT)
subplot(3, 1, 3);
stem(0:length(reconstructed_x)-1, real(reconstructed_x), 'filled');
xlabel('n');
ylabel('x(n)');
title('Reconstructed Signal (IDFT)');

% Adjust the spacing between subplots
sgtitle('DFT and IDFT');
