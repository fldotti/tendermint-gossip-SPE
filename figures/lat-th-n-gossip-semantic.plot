#!/usr/local/bin/gnuplot

outfile = 'lat-th-n-gossip-semantic.eps'

load 'lat-th-common.plot'

set key bottom right

plot	'data/n53/size1024/gossip/summary' u 6:7 w lp ls 4 t  'Gossip, n = 53',\
	'data/n105/size1024/gossip/summary' u 6:7 w lp ls 5 t 'Gossip, n = 105',\
	'data/n157/size1024/gossip/summary' u 6:7 w lp ls 6 t 'Gossip, n = 157',\
	'data/n53/size1024/gossip+f+a/summary' u 6:7 w lp ls 7 t  'Semantic Gossip, n = 53',\
	'data/n105/size1024/gossip+f+a/summary' u 6:7 w lp ls 8 t 'Semantic Gossip, n = 105',\
	'data/n157/size1024/gossip+f+a/summary' u 6:7 w lp ls 9 t 'Semantic Gossip, n = 157',\
	'data/n53/size1024/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n157/size1024/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
