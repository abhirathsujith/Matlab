% Define the input signal
x = [1 2 3 4];

% Compute DFT
X = fft(x);

% Compute IDFT
x_reconstructed = ifft(X);

% Display the results
disp("DFT of x:");
disp(X);

disp("Reconstructed x using IDFT:");
disp(x_reconstructed);
