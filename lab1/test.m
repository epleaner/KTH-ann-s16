patterns = original_patterns;
targets = original_targets;

[insize, ndata] = size(patterns);
[outsize, ndata] = size(targets);

pats =  [patterns ; ones(1,ndata)];

for i=1:epochs
    forwardpass;
    
%     plotnetwork;
    gaussplot;
    
    error(i) = sum(sum(abs(sign(out) - targets)./2));
end

% ploterror;