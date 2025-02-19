#!/usr/local/bin/gnuplot

outfile = 'heatmap-n105-size1kb-gossip.eps'
title = 'Gossip, 1KB values'

load 'heatmap-common.plot'

plot	'data/n105/size1024/gossip/failed' \
	matrix rowheaders columnheaders using 1:2:3 with image, \
	'' matrix rowheaders columnheaders using 1:2:($3 == 0 ? "" : sprintf("%.0f",$3)) with labels tc rgb "black", \
	'' matrix rowheaders columnheaders using 1:2:($3 < 7 ? "" : sprintf("%.0f",$3)) with labels tc rgb "white"
