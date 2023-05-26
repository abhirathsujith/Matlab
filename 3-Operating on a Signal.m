% Operating on a Signal

% Generate a signal
t = 0:0.01:5;                     % Time range from 0 to 5 with step size of 0.01
signal = sin(2*pi*t);              % Generate a sinusoidal signal

% Amplitude Scaling
scaled_signal = 2 * signal;        % Scale the signal amplitude by a factor of 2

% Time Shifting
t_shifted = t + 1;                 % Shift the signal in time by 1 unit

% Time Reversal
reversed_signal = signal(end:-1:1); % Reverse the signal in time

% Addition of Signals
noise = 0.2 * randn(size(t));      % Generate Gaussian noise with standard deviation 0.2
noisy_signal = signal + noise;     % Add noise to the original signal

% Plotting the signals
figure;

% Original Signal
subplot(2, 2, 1);                  % Create a subplot for the original signal
plot(t, signal);                   % Plot the original signal
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');

% Amplitude Scaling
subplot(2, 2, 2);                  % Create a subplot for the scaled signal
plot(t, scaled_signal);            % Plot the scaled signal
title('Amplitude Scaling');
xlabel('Time');
ylabel('Amplitude');

% Time Shifting
subplot(2, 2, 3);                  % Create a subplot for the shifted signal
plot(t_shifted, signal);           % Plot the shifted signal
title('Time Shifting');
xlabel('Time');
ylabel('Amplitude');

% Time Reversal
subplot(2, 2, 4);                  % Create a subplot for the reversed signal
plot(t, reversed_signal);          % Plot the reversed signal
title('Time Reversal');
xlabel('Time');
ylabel('Amplitude');

% Adjusting the layout
sgtitle('Operating on a Signal');   % Add an overall title to the figure
