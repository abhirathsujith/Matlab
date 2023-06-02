% Define the input signals and filter impulse response
x = [0.2, 0.4, 0.6, 0.8, 1.0];  % Input signal
h = [0.1, 0.2, 0.1];             % Filter impulse response

% Define the block size and hop size for overlap-add
blockSize = length(h);
hopSize = blockSize;

% Pad the input signal with zeros to make its length divisible by the block size
x = [x, zeros(1, blockSize - mod(length(x), blockSize))];

% Perform convolution using the overlap-add method
output = zeros(1, length(x) + length(h) - 1);  % Initialize the output signal

for i = 1:hopSize:length(x)
    inputBlock = x(i:i+blockSize-1);                   % Extract a block of input signal
    outputBlock = conv(inputBlock, h);                 % Convolve the input block with the filter impulse response
    output(i:i+length(outputBlock)-1) = output(i:i+length(outputBlock)-1) + outputBlock;  % Overlap-add the output blocks
end

% Plot the output signal
stem(0:length(output)-1, output, 'filled');
title('Convolution using Overlap-Add');
xlabel('Sample');
ylabel('Amplitude');
