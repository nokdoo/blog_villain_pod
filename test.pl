#!/usr/bin/env perl

use strict;
use warnings;
use lib './';
use Term::ANSIColor;
use Data::Dumper;

use HTML::TreeBuilder;

# Turn HTML into DOM tree
my $html_string = do {
	open (my $file, '<:encoding(utf8)', './ttttt') or die "T.T";
	local $/;
	<$file>;
};

my $root = HTML::TreeBuilder->new_from_content($html_string);

print $root->{_body}->{_content};



# open ( my $file, '>', 'tttttt' ) or die;
# print $file $root->{_body}->as_HTML;

