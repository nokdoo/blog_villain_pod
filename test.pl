#!/usr/bin/env perl

my $str = `git diff --name-status master`;

foreach my $line (split /[\r\n]+/, $str)
{
	print $line."\n\n";
}
