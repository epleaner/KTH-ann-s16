patterns = sample_patterns;
targets = sample_targets;

[insize, ndata] = size(patterns);
[outsize, ndata] = size(targets);

pats =  [patterns ; ones(1,ndata)];

w = randn(hidden, insize+1) .* 0.05;
dw = randn(hidden, insize+1) .* 0.05;

v = randn(outsize, hidden+1) .* 0.05;
dv = randn(outsize, hidden+1) .* 0.05;

for i=1:epochs
    forwardpass;
    backwardpass;
    weightupdate;
    
%     plotnetwork;
end