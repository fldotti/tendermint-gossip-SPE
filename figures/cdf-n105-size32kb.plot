#!/usr/local/bin/gnuplot

outfile = 'cdf-n105-size32kb.eps'

title='105 processes, 32KB values'

load 'cdf-common.plot'

plot	'data/n105/size32768/star/rate1/distribution' u 3:1 w l ls 1 t klabel('Baseline', 735.1, 368.9),\
	'data/n105/size32768/gossip/rate1/distribution' u 3:1 w l ls 2 t klabel('Gossip', 607.3, 166.9),\
	'data/n105/size32768/gossip+f+a/rate1/distribution' u 3:1 w l ls 3 t klabel('Semantic Gossip', 487.3, 132.1),\

