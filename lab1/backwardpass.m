delta_o = (out - targets) .* ((1 + out) .* (1 - out)) * 0.5;
delta_h = (transpose(v) * delta_o) .* ((1 + hout) .* (1 - hout)) * 0.5;
delta_h = delta_h(1:hidden, :);