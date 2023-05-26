% Define the filter specifications
order = 4; % Filter order
cutoff_freq = 0.3; % Cutoff frequency (normalized)
pass_ripple = 1; % Maximum passband ripple in dB

% Design the Chebyshev filter
[b, a] = cheby1(order, pass_ripple, cutoff_freq);

% Define the input signal
x = [1 2 3 4 5];

% Apply the Chebyshev filter
y = filter(b, a, x);

% Display the filtered signal
disp("Chebyshev Filtered Signal:");
disp(y);
