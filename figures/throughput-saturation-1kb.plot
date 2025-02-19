#!/usr/local/bin/gnuplot

outfile = 'throughput-saturation-1kb.eps'

load 'throughput-saturation-common.plot'

plot 'data/throughput-saturation-1kb.txt' u 2:xtic(1) lc 'black' t 'n = 53',\
	'' u 3:xtic(1) lc 'black' t 'n = 105',\
	'' u 4:xtic(1) lc 'black' t 'n = 157'
