dw = (dw .* alpha) - (delta_h * transpose(pats)) .* (1-alpha);
dv = (dv .* alpha) - (delta_o * transpose(hout)) .* (1-alpha);
w = w + dw .* eta;
v = v + dv .* eta;