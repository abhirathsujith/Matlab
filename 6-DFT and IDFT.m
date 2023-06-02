% Define the input signal
x = [1, 2, 3, 4];

% Compute the DFT
X = fft(x);

% Compute the IDFT
reconstructed_x = ifft(X);

% Display the results
disp('DFT:');
disp(X);
disp('IDFT:');
disp(reconstructed_x);
