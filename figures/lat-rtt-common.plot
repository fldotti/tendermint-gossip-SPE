#!/usr/local/bin/gnuplot

set xrange [170:415]
set xtics 25
set xlabel 'Overlay network median RTT (ms)'

set ytics 100
set ylabel 'Average latency (ms)'
set yrange [0:1000]
set mytics

set key bottom right

set grid ytics xtics

set style line 1 lw 5 pt 1 lc 'gray50' #Gossip
set style line 2 lw 5 pt 1 lc 'gray10' #Semantic

set key box
set key title '105 processes, 1KB values'

set encoding iso_8859_1 

if (exists("outfile")) {
       set terminal postscript eps enhanced color size 4,2 font 'Helvetica, 14'
       set output outfile
       print 'Output to "'.outfile.'"'
} else {
       set terminal qt font 'Helvetica, 16'
}

