#!/usr/local/bin/gnuplot

outfile = 'cdf-n53-size1kb.eps'

title='53 processes, 1KB values'

load 'cdf-common.plot'

unset xlabel

plot	'data/n53/size1024/star/rate9/distribution' u 3:1 w l ls 1 t klabel('Baseline', 439.4, 168.9),\
	'data/n53/size1024/gossip/rate9/distribution' u 3:1 w l ls 2 t klabel('Gossip', 712.6, 156.7),\
	'data/n53/size1024/gossip+f+a/rate9/distribution' u 3:1 w l ls 3 t klabel('Semantic Gossip', 509.0, 108.8),\


