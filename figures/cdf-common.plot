#!/usr/local/bin/gnuplot

set xrange [0:2000]
set xlabel 'Latency (ms)'

set ytics 10
set ylabel 'Percentile (%)'
set yrange [0:100]
set mytics

set key box width -8 opaque
set key bottom right
set key title title
#set key reverse

set grid ytics xtics

set style line 1 lw 3 pt 1 lc 'gray10' dt 3 #Star
set style line 2 lw 3 pt 1 lc 'gray10' dt 5 #Gossip
set style line 3 lw 3 pt 1 lc 'gray10' #Semantic

set encoding iso_8859_1 

if (exists("outfile")) {
       set terminal postscript eps enhanced color size 4,1.5 font 'Helvetica, 14'
       set output outfile
       print 'Output to "'.outfile.'"'
} else {
       set terminal qt font 'Helvetica, 16'
}

klabel(setup, av, sd) = sprintf('%s (%.1f \261 %.1fms)', setup, av, sd)
