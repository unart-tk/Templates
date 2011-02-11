#!/usr/bin/perl
# copyright (c) 2010 ben@leakin.org
# ./fool.pl --\bvelp
# 

use strict;
use warnings;
use Getopt::Std;



our($opt_h,$opt_a);
sub usage() {

exit(1);
}

getopts("h:a") or usage();
usage() if $opt_h;

my $arg1 = $opt_a ||= "all";

