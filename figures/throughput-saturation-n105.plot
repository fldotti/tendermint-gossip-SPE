#!/usr/local/bin/gnuplot

outfile = 'throughput-saturation-n105.eps'

load 'throughput-saturation-common.plot'

plot 'data/throughput-saturation-n105.txt' u 2:xtic(1) lc 'black' t '32B',\
	'' u 3:xtic(1) lc 'black' t '1KB',\
	'' u 4:xtic(1) lc 'black' t '32KB',\
