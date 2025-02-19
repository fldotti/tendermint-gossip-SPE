#!/usr/local/bin/gnuplot

unset key

outfile = 'heatmap-multiplot.eps'
set terminal postscript eps enhanced color size 4,2 font 'Helvetica, 10'
set palette defined (0 "white", 1 "grey",2 "grey" ,3 "black")
set output outfile
print 'Output to "'.outfile.'"'

set rmargin 0

set macros
POS = "at graph 0.02,0.15"

set multiplot layout 2,2 rowsfirst

set ylabel "Load per client (values/s)"
unset colorbox
unset xtics

set label 1 front "Gossip, 1KB"  @POS

plot	'data/n105/size1024/gossip/failed' \
	matrix rowheaders columnheaders using 1:2:3 with image, \
	'' matrix rowheaders columnheaders using 1:2:($3 == 0 ? "" : sprintf("%.0f",$3)) with labels tc rgb "black", \
	'' matrix rowheaders columnheaders using 1:2:($3 < 7 ? "" : sprintf("%.0f",$3)) with labels tc rgb "white"

unset ylabel
set colorbox
unset ytics

set label 1 "Semantic Gossip, 1KB" @POS

plot	'data/n105/size1024/gossip+f+a/failed' \
	matrix rowheaders columnheaders using 1:2:3 with image, \
	'' matrix rowheaders columnheaders using 1:2:($3 == 0 ? "" : sprintf("%.0f",$3)) with labels tc rgb "black", \
	'' matrix rowheaders columnheaders using 1:2:($3 < 7 ? "" : sprintf("%.0f",$3)) with labels tc rgb "white"

set ylabel "Load per client (values/s)"
set xlabel "Injected message loss (%)"
unset colorbox
set ytics
set xtics

set label 1 "Gossip, 32KB" @POS

plot	'data/n105/size32768/gossip/failed' \
	matrix rowheaders columnheaders using 1:2:3 with image, \
	'' matrix rowheaders columnheaders using 1:2:($3 == 0 ? "" : sprintf("%.0f",$3)) with labels tc rgb "black", \
	'' matrix rowheaders columnheaders using 1:2:($3 < 7 ? "" : sprintf("%.0f",$3)) with labels tc rgb "white"

unset ylabel
set colorbox
unset ytics

set label 1 "Semantic Gossip, 32KB" @POS

plot	'data/n105/size32768/gossip+f+a/failed' \
	matrix rowheaders columnheaders using 1:2:3 with image, \
	'' matrix rowheaders columnheaders using 1:2:($3 == 0 ? "" : sprintf("%.0f",$3)) with labels tc rgb "black", \
	'' matrix rowheaders columnheaders using 1:2:($3 < 7 ? "" : sprintf("%.0f",$3)) with labels tc rgb "white"

unset multiplot
