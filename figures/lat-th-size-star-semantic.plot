#!/usr/local/bin/gnuplot

outfile = 'lat-th-size-star-semantic.eps'

load 'lat-th-common.plot'

plot	'data/n105/size32/star/summary' u 6:7 w lp ls 1 t 'Star, SIZE = 32',\
	'data/n105/size1024/star/summary' u 6:7 w lp ls 3 t 'Star, SIZE = 1024',\
	'data/n105/size32768/star/summary' u 6:7 w lp ls 5 t 'Star, SIZE = 32768',\
	'data/n105/size32/gossip+f+a/summary' u 6:7 w lp ls 2 t 'Semantic Gossip, SIZE = 32',\
	'data/n105/size1024/gossip+f+a/summary' u 6:7 w lp ls 4 t 'Semantic Gossip, SIZE = 1024',\
	'data/n105/size32768/gossip+f+a/summary' u 6:7 w lp ls 6 t 'Semantic Gossip, SIZE = 32768',\
	'data/n105/size32/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size32768/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
