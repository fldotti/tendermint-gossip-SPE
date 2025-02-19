#!/usr/local/bin/gnuplot

outfile = 'lat-th-n-star-semantic.eps'

load 'lat-th-common.plot'

plot	'data/n53/size1024/star/summary' u 6:7 w lp ls 1 t 'Star, N = 53',\
	'data/n53/size1024/gossip+f+a/summary' u 6:7 w lp ls 2 t 'Semantic Gossip, N = 53',\
	'data/n105/size1024/star/summary' u 6:7 w lp ls 3 t 'Star, N = 105',\
	'data/n105/size1024/gossip+f+a/summary' u 6:7 w lp ls 4 t 'Semantic Gossip, N = 105',\
	'data/n157/size1024/star/summary' u 6:7 w lp ls 5 t 'Star, N = 157',\
	'data/n157/size1024/gossip+f+a/summary' u 6:7 w lp ls 6 t 'Semantic Gossip, N = 157',\
	'data/n53/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0)  w p pt 6 ps 3 lc 'black' t '',\
	'data/n157/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
	'data/n105/size1024/max_power' u 7:(stringcolumn(1) eq 'star' || stringcolumn(1) eq 'gossip+f+a' ? $8 : 1/0) w p pt 6 ps 3 lc 'black' t '',\
