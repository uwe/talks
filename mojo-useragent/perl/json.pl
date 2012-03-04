use Mojo::JSON::Pointer;

my $p = Mojo::JSON::Pointer->new;

say $p->get({foo => [23, 'bar']}, '/foo/1');

if ($p->contains({foo => [23, 'bar']}, '/foo')) {
  say 'Contains "/foo".';
}
