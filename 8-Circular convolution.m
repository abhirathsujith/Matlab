% Define the input sequences
x = [1, 2, 3, 4];   % Sequence 1
h = [1, -1, 1];     % Sequence 2

% Compute the circular convolution
N = length(x) + length(h) - 1;   % Length of circular convolution
y = ifft(fft(x, N) .* fft(h, N));

% Generate the x-axis for the output sequence
n = 0:(N-1);

% Plot the input sequences
subplot(3, 1, 1);
stem(0:(length(x)-1), x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Sequence 1');

subplot(3, 1, 2);
stem(0:(length(h)-1), h, 'filled');
xlabel('n');
ylabel('h(n)');
title('Sequence 2');

% Plot the output sequence (circular convolution)
subplot(3, 1, 3);
stem(n, y, 'filled');
xlabel('n');
ylabel('y(n)');
title('Circular Convolution');

