x=transpose([-5:1:5]);
y=x;
z=exp(-x.*x*0.1) * transpose(exp(-y.*y*0.1)) - 0.5;

[insize_x, ndata_x] = size(x);
gridsize = insize_x * ndata_x;
ndata = gridsize * gridsize;

targets = reshape (z, 1, ndata);
[xx, yy] = meshgrid (x, y);
patterns = [reshape(xx, 1, ndata); reshape(yy, 1, ndata)];