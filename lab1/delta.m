delta_W = (-step_length) * (w * X - targets) * transpose(X);
w = w + delta_W;