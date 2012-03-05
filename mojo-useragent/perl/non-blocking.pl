$ua->get('http://perl.org' => sub {
  my ($ua, $tx) = @_;
  print $tx->res->body;
  Mojo::IOLoop->stop;
});
Mojo::IOLoop->start;
