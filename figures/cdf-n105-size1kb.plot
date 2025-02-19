#!/usr/local/bin/gnuplot

outfile = 'cdf-n105-size1kb.eps'

title='105 processes, 1KB values'

load 'cdf-common.plot'

unset xlabel

plot	'data/n105/size1024/star/rate4/distribution' u 3:1 w l ls 1 t klabel('Baseline', 437.3, 151.7),\
	'data/n105/size1024/gossip/rate4/distribution' u 3:1 w l ls 2 t klabel('Gossip', 653.9,184.1),\
	'data/n105/size1024/gossip+f+a/rate4/distribution' u 3:1 w l ls 3 t klabel('Semantic Gossip', 441.2, 104.8),\

