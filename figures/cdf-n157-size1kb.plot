#!/usr/local/bin/gnuplot

outfile = 'cdf-n157-size1kb.eps'

title='157 processes, 1KB values'

load 'cdf-common.plot'

plot	'data/n157/size1024/star/rate3/distribution' u 3:1 w l ls 1 t klabel('Baseline', 448.3, 153.2),\
	'data/n157/size1024/gossip/rate3/distribution' u 3:1 w l ls 2 t klabel('Gossip', 802.4, 684.5),\
	'data/n157/size1024/gossip+f+a/rate3/distribution' u 3:1 w l ls 3 t klabel('Semantic Gossip', 481.3, 134.6),\

