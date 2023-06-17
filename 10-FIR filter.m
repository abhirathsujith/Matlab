
% FIR Filter Design using Window Techniques

% Filter Specifications
fs = 1000; % Sampling frequency (Hz)
fpass = 100; % Passband edge frequency (Hz)
fstop = 200; % Stopband edge frequency (Hz)
apass = 1; % Passband ripple (dB)
astop = 60; % Stopband attenuation (dB)

% Filter Order
N = 101; % Filter order (odd number)

% Compute the number of elements for the ideal response arrays
passband_len = round(fpass/(fs/2));
stopband_len = round((fstop - fpass)/(fs/2));

% Create ideal frequency response
ideal_resp = [ones(1, passband_len), zeros(1, stopband_len)];
ideal_resp = [ideal_resp, fliplr(ideal_resp)];

% Design FIR filter using the windowing technique
filter_coeffs = fir1(N-1, fstop/(fs/2), 'low', kaiser(N, 4));

% Compute actual frequency response of the designed filter
freq_resp = freqz(filter_coeffs, 1, 1024, fs);

% Plot the frequency response
figure;
subplot(2,1,1);
plot(linspace(0, fs/2, 512), 20*log10(abs(freq_resp(1:512))));
hold on;
plot(linspace(0, fs/2, length(ideal_resp)), 20*log10(abs(ideal_resp)), 'r--');
title('Frequency Response of FIR Filter');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
legend('Actual Response', 'Ideal Response');
grid on;

subplot(2,1,2);
plot(linspace(0, fs/2, 512), unwrap(angle(freq_resp(1:512))));
title('Phase Response of FIR Filter');
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
grid on;
