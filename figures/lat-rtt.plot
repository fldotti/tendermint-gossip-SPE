#!/usr/local/bin/gnuplot

outfile = 'lat-rtt.eps'

load 'lat-rtt-common.plot'

plot	'data/n105/size1024/gossip/rate4/rtt-latency' u 1:2 w lp ls 1 pt 2 t 'Gossip',\
	'data/n105/size1024/gossip+f+a/rate4/rtt-latency' u 1:2 w lp ls 2 pt 1 t 'Semantic Gossip',\
	'data/n105/size1024/gossip/rate4/rtt-latency' u 1:(stringcolumn(1) eq '244' ? $2 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/gossip+f+a/rate4/rtt-latency' u 1:(stringcolumn(1) eq '244' ? $2 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
