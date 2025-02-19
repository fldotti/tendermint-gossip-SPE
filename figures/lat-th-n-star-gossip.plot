#!/usr/local/bin/gnuplot

outfile = 'lat-th-n-star-gossip.eps'

load 'lat-th-common.plot'

set key top right

plot	'data/n53/size1024/star/summary' u 6:7 w lp ls 1 t  'Baseline, n = 53',\
	'data/n105/size1024/star/summary' u 6:7 w lp ls 2 t 'Baseline, n = 105',\
	'data/n157/size1024/star/summary' u 6:7 w lp ls 3 t 'Baseline, n = 157',\
	'data/n53/size1024/gossip/summary' u 6:7 w lp ls 4 t  'Gossip, n = 53',\
	'data/n105/size1024/gossip/summary' u 6:7 w lp ls 5 t 'Gossip, n = 105',\
	'data/n157/size1024/gossip/summary' u 6:7 w lp ls 6 t 'Gossip, n = 157',\
	'data/n53/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n157/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
