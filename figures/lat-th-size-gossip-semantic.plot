#!/usr/local/bin/gnuplot

outfile = 'lat-th-size-gossip-semantic.eps'

load 'lat-th-common.plot'

set key bottom right

plot	'data/n105/size32/gossip/summary' u 6:7 w lp ls 4 t        'Gossip, 32B',\
	'data/n105/size1024/gossip/summary' u 6:7 w lp ls 5 t      'Gossip, 1KB',\
	'data/n105/size32768/gossip/summary' u 6:7 w lp ls 6 t     'Gossip, 32KB',\
	'data/n105/size32/gossip+f+a/summary' u 6:7 w lp ls 7 t    'Semantic Gossip, 32B',\
	'data/n105/size1024/gossip+f+a/summary' u 6:7 w lp ls 8 t  'Semantic Gossip, 1KB',\
	'data/n105/size32768/gossip+f+a/summary' u 6:7 w lp ls 9 t 'Semantic Gossip, 32KB',\
	'data/n105/size32/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size32768/max_power' u 7:(stringcolumn(1) eq 'gossip' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
