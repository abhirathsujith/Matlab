% Define the filter specifications
order = 4; % Filter order
cutoff_freq = 0.3; % Cutoff frequency (normalized)

% Design the Butterworth filter
[b, a] = butter(order, cutoff_freq);

% Define the input signal
x = [1 2 3 4 5];

% Apply the Butterworth filter
y = filter(b, a, x);

% Display the filtered signal
disp("Butterworth Filtered Signal:");
disp(y);
