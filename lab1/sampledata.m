[insize, ndata] = size(patterns);
permute = randperm(ndata);
permute = permute(1:n);

sample_patterns = patterns(:, permute);
sample_targets = targets(:, permute);