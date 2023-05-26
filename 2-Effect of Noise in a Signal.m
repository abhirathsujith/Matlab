% Effect of Noise in a Signal

% Generate a clean signal
t = 0:0.01:5;                     % Time range from 0 to 5 with step size of 0.01
clean_signal = sin(2*pi*t);       % Generate a clean sinusoidal signal

% Generate noisy signal
noise = 0.2*randn(size(t));       % Generate Gaussian noise with standard deviation 0.2
noisy_signal = clean_signal + noise;  % Add noise to the clean signal

% Plotting the signals
figure;

% Clean Signal
subplot(2, 1, 1);                 % Create a subplot for the clean signal
plot(t, clean_signal);            % Plot the clean signal
title('Clean Signal');
xlabel('Time');
ylabel('Amplitude');

% Noisy Signal
subplot(2, 1, 2);                 % Create a subplot for the noisy signal
plot(t, noisy_signal);            % Plot the noisy signal
title('Noisy Signal');
xlabel('Time');
ylabel('Amplitude');

% Adjusting the layout
sgtitle('Effect of Noise in a Signal');  % Add an overall title to the figure
