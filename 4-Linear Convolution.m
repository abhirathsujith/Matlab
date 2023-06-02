% Define the input signals
x = [1, 2, 3, 4];       % Signal 1
h = [1, -1, 1];         % Signal 2

% Compute the linear convolution
y = conv(x, h);

% Generate the x-axis for the output signal
n = 0:(numel(x)+numel(h)-2);

% Plot the input signals
subplot(3,1,1);
stem(0:(numel(x)-1), x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Signal 1');

subplot(3,1,2);
stem(0:(numel(h)-1), h, 'filled');
xlabel('n');
ylabel('h(n)');
title('Signal 2');

% Plot the output signal (linear convolution)
subplot(3,1,3);
stem(n, y, 'filled');
xlabel('n');
ylabel('y(n)');
title('Linear Convolution');


