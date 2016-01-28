eta = 0.1;
epochs = 500;
hidden = 50;
alpha = 0.9;
error = zeros(1, epochs);
n = 25;

% sepdata;
% nsepdata;
% encoder;
gaussdata;
sampledata;

original_patterns = patterns;
original_targets = targets;

train;
test;