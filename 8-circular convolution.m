% Define the input sequences
L = 3; % Number of sequences
N = 5; % Length of each sequence

x = [1 2 3 4 5]; % First sequence
h = [2 4 6 8 10]; % Second sequence
g = [3 6 9 12 15]; % Third sequence

% Perform circular convolution
y = zeros(1, N); % Initialize the output sequence

for i = 1:L
    y = y + cconv(x, circshift(h, i-1, 2), N);
end

% Display the result
disp("Circular Convolution of L Sequences:");
disp(y);
