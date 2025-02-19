#!/usr/local/bin/gnuplot

set xtics 20
set xrange [0:180]
set xlabel 'Throughput (msg/s)' font ",18"
#set mxtics 2

set ylabel 'Average latency (ms)' font ",18"
set yrange [0:2000]
set mytics

set key bottom right
set grid ytics xtics

set pointsize 1.4

#Baseline
set style line 1 lw 3 pt 7 lc 'black' dt 2
set style line 2 lw 3 pt 2 lc 'black' dt 2 
set style line 3 lw 3 pt 5 lc 'black' dt 2
#Gossip
set style line 4 lw 3 pt 7 lc 'gray60' 
set style line 5 lw 3 pt 2 lc 'gray60'
set style line 6 lw 3 pt 5 lc 'gray60'
#Semantic Gossip
set style line 7 lw 3 pt 7 lc 'black' 
set style line 8 lw 3 pt 2 lc 'black' 
set style line 9 lw 3 pt 5 lc 'black' 

if (exists("outfile")) {
       set terminal postscript eps enhanced color size 5,2.9 font 'Helvetica, 15'
       set output outfile
       print 'Output to "'.outfile.'"'
} else {
       set terminal qt font 'Helvetica, 16'
}
