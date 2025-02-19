#!/usr/local/bin/gnuplot

reset

unset key

set grid ytics xtics

set xlabel "Injected message loss"
set ylabel "Load per client (values/s)"

set label front title at graph 0.02,0.15 # setting title as label


if (exists("outfile")) {
	set terminal postscript eps enhanced color size 4,2 font 'Helvetica, 14'
	set palette defined (0 "white", 1 "grey",2 "grey" ,3 "black")	
	set output outfile
	print 'Output to "'.outfile.'"'
} else {
	set terminal qt font 'Helvetica, 16'
}
