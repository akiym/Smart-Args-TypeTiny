use Test2::V0;
use Smart::Args::TypeTiny;
use Mouse;
use Mouse::Util::TypeConstraints;

subtype 'PositiveInt',
    as 'Int',
    where { $_ > 0 },
    message { 'Must be greater than zero' };

sub foo {
    args my $x => 'PositiveInt';
}

ok lives { foo(x => 1) };
like dies { foo(x => 0) }, qr/Type check failed in binding to parameter '\$x'; Must be greater than zero/;

done_testing;
