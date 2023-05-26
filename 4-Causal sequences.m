% Causal sequences
x = [1 2 3 4]; % Input sequence
h = [1 2 1]; % Impulse response

% Linear convolution
y = conv(x, h);

% Display the result
disp("Linear Convolution of Causal Sequences:");
disp(y);
