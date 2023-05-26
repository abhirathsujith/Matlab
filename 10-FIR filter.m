% Define the input signal
x = [1 2 3 4 5];

% Define the filter coefficients
h = [0.1 0.2 0.3 0.4 0.5];

% Apply FIR filter
y = conv(x, h, 'same');

% Display the filtered signal
disp("Filtered Signal:");
disp(y);
