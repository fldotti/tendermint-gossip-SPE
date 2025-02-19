#!/usr/local/bin/gnuplot

outfile = 'lat-th-size-star-gossip.eps'

load 'lat-th-common.plot'

set key top right

plot	'data/n105/size32/star/summary' u 6:7 w lp ls 1 t    'Baseline,  32B',\
	'data/n105/size1024/star/summary' u 6:7 w lp ls 2 t  'Baseline,  1KB',\
	'data/n105/size32768/star/summary' u 6:7 w lp ls 3 t 'Baseline, 32KB',\
	'data/n105/size32/gossip/summary' u 6:7 w lp ls 4 t    'Gossip,  32B',\
	'data/n105/size1024/gossip/summary' u 6:7 w lp ls 5 t  'Gossip,  1KB',\
	'data/n105/size32768/gossip/summary' u 6:7 w lp ls 6 t 'Gossip, 32KB',\
	'data/n105/size32/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size32768/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
