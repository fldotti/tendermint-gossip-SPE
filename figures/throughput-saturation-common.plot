#!/usr/local/bin/gnuplot

set xtics border in scale 0,0
set auto x

set yrange [0:180]
set ylabel 'Throughput (msg/s)'

set style data histogram
set style fill pattern
set datafile missing '-'

set datafile separator '\t'

set grid ytics

set tmargin 0.5
set bmargin 1.5

if (exists("outfile")) {
       set terminal postscript eps enhanced color size 4,1.5 font 'Helvetica, 14'
       set output outfile
       print 'Output to "'.outfile.'"'
} else {
       set terminal qt font 'Helvetica, 16'
}
