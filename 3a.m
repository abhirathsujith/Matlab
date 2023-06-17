% Signal Operation Program
% Signal 1
t = linspace(0, 1, 100); % Time vector from 0 to 1 with 100 samples
x1 = sin(2*pi*5*t); % Signal 1: Sinusoidal signal with frequency 5 Hz
% Signal 2
x2 = 0.5 * cos(2*pi*10*t); % Signal 2: Cosine signal with frequency 10 Hz, scaled by 0.5
% Addition
addition = x1 + x2; % Adding Signal 1 and Signal 2
% Subtraction
subtraction = x1 - x2; % Subtracting Signal 2 from Signal 1
% Multiplication
multiplication = x1 .* x2; % Multiplying Signal 1 and Signal 2 element-wise
% Plotting the signals
figure;
subplot(4,1,1);
plot(t, x1);
title('Signal 1: Sinusoidal signal with frequency 5 Hz');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,2);
plot(t, x2);
title('Signal 2: Cosine signal with frequency 10 Hz (scaled by 0.5)');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,3);
plot(t, addition);
title('Addition of Signal 1 and Signal 2');
xlabel('Time');
ylabel('Amplitude');
subplot(4,1,4);
plot(t, subtraction);
title('Subtraction of Signal 2 from Signal 1');
xlabel('Time');
ylabel('Amplitude');
% Multiplication plot is optional since it may not be visually clear
% figure;
% plot(t, multiplication);
% title('Multiplication of Signal 1 and Signal 2');
% xlabel('Time');
% ylabel('Amplitude');
