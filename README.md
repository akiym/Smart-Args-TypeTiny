[![Build Status](https://travis-ci.org/akiym/Smart-Args-TypeTiny.svg?branch=master)](https://travis-ci.org/akiym/Smart-Args-TypeTiny)
# NAME

Smart::Args::TypeTiny - We are smart, smart for you

# SYNOPSIS

    use Smart::Args::TypeTiny;
    use Types::Standard -all;

    sub func2 {
        args my $p => Int,
             my $q => {isa => Int, optional => 1},
             ;
    }
    func2(p => 3, q => 4); # p => 3, q => 4
    func2(p => 3);         # p => 3, q => undef

    sub func3 {
        args my $p => {isa => Int, default => 3};
    }
    func3(p => 4); # p => 4
    func3();       # p => 3

    package F;
    use Moo;
    use Smart::Args::TypeTiny;
    use Types::Standard -all;

    sub method {
        args my $self,
             my $p => Int,
             ;
    }
    sub class_method {
        args my $class => ClassName,
             my $p     => Int,
             ;
    }

    sub simple_method {
        args_pos my $self, my $p;
    }

    my $f = F->new();
    $f->method(p => 3);

    F->class_method(p => 3);

    F->simple_method(3);

# DESCRIPTION

Smart::Args::TypeTiny is ...

# SEE ALSO

[Smart::Args](https://metacpan.org/pod/Smart::Args)

[Type::Tiny](https://metacpan.org/pod/Type::Tiny), [Types::Standard](https://metacpan.org/pod/Types::Standard)

# LICENSE

Copyright (C) Takumi Akiyama.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Takumi Akiyama &lt;t.akiym@gmail.com>
