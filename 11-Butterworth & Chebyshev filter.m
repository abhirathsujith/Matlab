% Filter specifications
order = 4;             % Filter order
cutoff_freq = 1000;    % Cutoff frequency in Hz
sampling_freq = 5000;  % Sampling frequency in Hz

% Butterworth filter
[b_butter, a_butter] = butter(order, cutoff_freq/(sampling_freq/2));

% Chebyshev Type I filter
ripple = 1;            % Ripple in dB
[b_cheby1, a_cheby1] = cheby1(order, ripple, cutoff_freq/(sampling_freq/2));

% Frequency response
freq = linspace(0, sampling_freq/2, 1000);
h_butter = freqz(b_butter, a_butter, freq, sampling_freq);
h_cheby1 = freqz(b_cheby1, a_cheby1, freq, sampling_freq);

% Plotting
figure;
subplot(2,1,1);
plot(freq, abs(h_butter));
title('Butterworth Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

subplot(2,1,2);
plot(freq, abs(h_cheby1));
title('Chebyshev Type I Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

