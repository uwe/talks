use Mojo::DOM;

my $dom = Mojo::DOM->new('<div id="a">A</div><div id="b">B</div>');

print $dom->at('#b')->text;

$dom->div->[1]->replace_content('foo');

print $dom; # <div id="a">A</div><div id="b">foo</div>

