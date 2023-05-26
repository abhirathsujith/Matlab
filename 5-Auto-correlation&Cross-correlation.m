% Define the input signals
x = [1 2 3 4 5]; % First signal
y = [2 4 6 8 10]; % Second signal

% Auto-correlation
auto_corr = xcorr(x); % Compute auto-correlation

% Cross-correlation
cross_corr = xcorr(x, y); % Compute cross-correlation

% Plotting
n1 = -length(x)+1:length(x)-1; % Autocorrelation lag indices
n2 = -length(y)+1:length(y)-1; % Cross-correlation lag indices

figure;

subplot(2, 1, 1);
stem(n1, auto_corr);
xlabel('Lag');
ylabel('Auto-correlation');
title('Auto-correlation of x');

subplot(2, 1, 2);
stem(n2, cross_corr);
xlabel('Lag');
ylabel('Cross-correlation');
title('Cross-correlation of x and y');
