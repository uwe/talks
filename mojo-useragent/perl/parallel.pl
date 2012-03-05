my $delay = Mojo::IOLoop->delay;
foreach my $url ('mojolicio.us', 'cpan.org') {
  $delay->begin;
  $ua->get($url => sub {
    my ($ua, $tx) = @_;
    $delay->end($tx->res->dom->at('title')->text);
  });
}
my @titles = $delay->wait;
