% Continuous Time Signal
t = 0:0.01:5;  % Time range from 0 to 5 with step size of 0.01
x_ct = sin(2*pi*t);  % Generate a sinusoidal signal

% Discrete Time Signal
n = 0:50;  % Sample indices from 0 to 50
x_dt = cos(0.1*pi*n);  % Generate a cosine signal

% Plotting the signals
figure;

% Continuous Time Signal
subplot(2, 1, 1);  % Create a subplot for continuous time signal
plot(t, x_ct);  % Plot the continuous time signal
title('Continuous Time Signal');
xlabel('Time');
ylabel('Amplitude');

% Discrete Time Signal
subplot(2, 1, 2);  % Create a subplot for discrete time signal
stem(n, x_dt);  % Plot the discrete time signal using stem plot
title('Discrete Time Signal');
xlabel('Sample Index');
ylabel('Amplitude');

% Adjusting the layout
sgtitle('Continuous and Discrete Time Signals');  % Overall title
