#!/usr/local/bin/gnuplot

outfile = 'msgloss-lat-loss.eps'

load 'msgloss-common.plot'

plot	'data/n105/size1024/gossip/rate1/summary-loss-success' u 1:7 w lp ls 1 t 'Gossip, 1KB',\
	'data/n105/size32768/gossip/rate1/summary-loss-success' u 1:7 w lp ls 2 t 'Gossip, 32KB',\
	'data/n105/size1024/gossip+f+a/rate1/summary-loss-success' u 1:7 w lp ls 3 t 'Semantic Gossip, 1KB',\
	'data/n105/size32768/gossip+f+a/rate1/summary-loss-success' u 1:7 w lp ls 4 t 'Semantic Gossip, 32KB',\
