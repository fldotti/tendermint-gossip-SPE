#!/usr/local/bin/gnuplot

set xtics 5
set xrange [-2:57]
set xlabel 'Induced message loss (%)'

set ylabel 'Average latency (ms)'
set yrange [0:2000]
set mytics

set key top left
#set key title title

set grid ytics mytics xtics 

set style line 1 lw 3 pt 2 ps 1.4 lc 'gray60'  #Gossip
set style line 2 lw 3 pt 5 ps 1.4 lc 'grey60'  #Gossip
set style line 3 lw 3 pt 2 ps 1.4 lc 'black'   #Semantic
set style line 4 lw 3 pt 5 ps 1.4 lc 'black'   #Semantic


if (exists("outfile")) {
       set terminal postscript eps enhanced color size 4,2 font 'Helvetica, 14'
       set output outfile
       print 'Output to "'.outfile.'"'
} else {
       set terminal qt font 'Helvetica, 16'
}
