requires 'PadWalker';
requires 'Type::Tiny' => '1.002000';

on 'test' => sub {
    requires 'Test2';
    requires 'Test2::Suite' => '0.000077';

    requires 'Moo';
    requires 'Mouse';
};

