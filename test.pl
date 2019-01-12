#!/usr/bin/env perl

use strict;
use App::Pod2CpanHtml;


my $parser = App::Pod2CpanHtml->new();

if (defined $ARGV[0]) {
    open IN, $ARGV[0]  or die "Couldn't open $ARGV[0]: $!\n";
} else {
    *IN = *STDIN;
}

if (defined $ARGV[1]) {
    open OUT, ">$ARGV[1]" or die "Couldn't open $ARGV[1]: $!\n";
} else {
    *OUT = *STDOUT;
}

$parser->output_fh(*OUT);
$parser->parse_file(*IN);
