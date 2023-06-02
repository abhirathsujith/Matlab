% Filter specifications
cutoff_freq = 0.2; % Normalized cutoff frequency (0 to 1)
filter_order = 50; % Filter order

% Determine window type and length
window_type = @hamming;
window_length = filter_order + 1;

% Design filter coefficients
filter_coeffs = fir1(filter_order, 2*cutoff_freq, window_type);

% Generate input signal
Fs = 1000; % Sampling frequency
t = 0:1/Fs:1; % Time vector
f = 10; % Signal frequency
input_signal = sin(2*pi*f*t);

% Apply the filter
output_signal = filter(filter_coeffs, 1, input_signal);

% Plot the input and output signals
figure;
subplot(2, 1, 1);
plot(t, input_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Signal');

subplot(2, 1, 2);
plot(t, output_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Output Signal');
