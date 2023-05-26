% Define the input signals
x = [1 2 3 4 5]; % Input sequence
h = [2 4 6]; % Impulse response

% Define parameters
L = length(h); % Length of the filter
M = 3; % Length of each segment (can be adjusted based on requirements)

% Pad input sequence with zeros
x_padded = [x zeros(1, L-1)];

% Compute the number of segments
num_segments = ceil(length(x_padded)/M);

% Perform convolution using overlap-add method
y = zeros(1, length(x_padded) + L - 1); % Initialize the output sequence

for i = 1:num_segments
    segment = x_padded((i-1)*M+1 : min(i*M, length(x_padded))); % Extract current segment
    segment_conv = conv(segment, h); % Perform convolution
    y((i-1)*M+1 : (i-1)*M+length(segment_conv)) = y((i-1)*M+1 : (i-1)*M+length(segment_conv)) + segment_conv; % Add convolution result to output sequence
end

% Trim the padded zeros
y = y(1 : length(x) + L - 1);

% Display the result
disp("Convolution using Overlap-Add Method:");
disp(y);
