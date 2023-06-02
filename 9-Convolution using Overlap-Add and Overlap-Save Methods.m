% Define the input sequences
x = [1, 2, 3, 4];       % Sequence 1
h = [1, -1, 1, -1];     % Sequence 2

% Define the block size and overlap size
blockSize = 2;          % Block size for overlap-add/save
overlapSize = 1;        % Overlap size for overlap-add/save

% Perform convolution using overlap-add method
yOverlapAdd = overlapAddConvolution(x, h, blockSize, overlapSize);

% Perform convolution using overlap-save method
yOverlapSave = overlapSaveConvolution(x, h, blockSize, overlapSize);

% Plot the original signals
subplot(3, 1, 1);
stem(0:length(x)-1, x, 'filled');
xlabel('n');
ylabel('x(n)');
title('Sequence 1');

subplot(3, 1, 2);
stem(0:length(h)-1, h, 'filled');
xlabel('n');
ylabel('h(n)');
title('Sequence 2');

% Plot the output signals (convolutions)
subplot(3, 1, 3);
hold on;
stem(0:length(yOverlapAdd)-1, yOverlapAdd, 'filled', 'DisplayName', 'Overlap-Add');
stem(0:length(yOverlapSave)-1, yOverlapSave, 'filled', 'DisplayName', 'Overlap-Save');
hold off;
xlabel('n');
ylabel('y(n)');
title('Convolution');
legend('Location', 'best');

