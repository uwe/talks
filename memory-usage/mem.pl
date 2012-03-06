BEGIN {
    use Memory::Usage;
    $MU = Memory::Usage->new;
    $MU->record('base');
}
use Devel::Loading sub {$MU->record("before $_")};

foreach my $module (@ARGV) {
    eval "use $module";
    warn $@ if $@;
}

$MU->record('finished');
$MU->dump;
