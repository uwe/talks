#!/usr/bin/perl

use strict;
use warnings;
use feature qw/say/;


use Mojo::UserAgent;
my $ua = Mojo::UserAgent->new(max_redirects => 5);

my $tx = $ua->get('http://www.perlworkshop.de/');
# say $tx->res->body;

say $tx->res->dom('.hi > p')->[1]->text;
