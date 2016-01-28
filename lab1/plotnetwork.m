p = w(1,1:2);
k = -w(1, insize+1) / (p * transpose(p));
l = sqrt(p * transpose(p));

axis ([-2, 2, -2, 2], 'square');
plot (patterns(1, find(targets>0)), patterns(2, find(targets>0)), '*', patterns(1, find(targets<0)), patterns(2, find(targets<0)), '+', [p(1), p(1)]*k + [-p(2), p(2)]/l, [p(2), p(2)]*k + [p(1), -p(1)]/l, '-');

drawnow;