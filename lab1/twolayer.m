eta = 0.1;
epochs = 500;
hidden = 50;

sepdata;
% nsepdata;
% encoder;
% gaussdata;

[insize, ndata] = size(patterns);
[outsize, ndata] = size(targets);

pats =  [patterns ; ones(1,ndata)];
error = zeros(1, epochs);

w = randn(hidden, insize+1) .* 0.05;
dw = randn(hidden, insize+1) .* 0.05;

v = randn(outsize, hidden+1) .* 0.05;
dv = randn(outsize, hidden+1) .* 0.05;

alpha = 0.9;

for i=1:epochs
    forwardpass;
    backwardpass;
    weightupdate;
    
%     plotnetwork;
%     gaussplot;
    
    error(i) = sum(sum(abs(sign(out) - targets)./2));
end

ploterror;