#!/usr/bin/perl

use Mojo::Base -strict;
use Mojo::UserAgent;

use MUAQ;


my $ua = Mojo::UserAgent->new;

my $tx = $ua->build_tx(GET => 'gmx.net');

my $queue = MUAQ->new;
$queue->add($tx);

$queue->start;

