package MUAQ;

# Mojo::UserAgent::Queue

use Mojo::Base -base;

has max_reqs => 5;
has per_host => 2;

has queue => sub { [] };


sub add {
    push @{(shift)->queue}, @_;
}

sub start {
    my ($self) = @_;

    # sort by hosts
    my %host = ();
    foreach my $tx (@{$self->queue}) {
        push @{$host{$tx->req->url->host}}, $tx;
    }

    my $in_progress = 0;
    # ...

}

1;

