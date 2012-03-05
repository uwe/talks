#!/usr/bin/perl

use strict;
use warnings;

use Mojo::UserAgent;
my $ua=Mojo::UserAgent->new(max_redirects=>5);

my $tx=$ua->get('http://www.perlworkshop.de/');
print $tx->res->body;
