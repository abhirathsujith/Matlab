% Filter specifications
order = 50;                     % Filter order
cutoffFreq = 0.4;               % Normalized cutoff frequency
windowType = 'hamming';         % Type of window function

% Design the FIR filter using windowing technique
filterCoeffs = fir1(order, cutoffFreq, windowType);

% Plot the magnitude response of the FIR filter
freqResponse = freqz(filterCoeffs, 1, 1024);
freqAxis = linspace(0, 1, numel(freqResponse));
magnitudeResponse = 20*log10(abs(freqResponse));

figure;
plot(freqAxis, magnitudeResponse);
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');
title('Magnitude Response of FIR Filter');
grid on;

% Plot the impulse response of the FIR filter
impulseResponse = filterCoeffs;

figure;
stem(0:length(impulseResponse)-1, impulseResponse, 'filled');
xlabel('n');
ylabel('h(n)');
title('Impulse Response of FIR Filter');
grid on;
