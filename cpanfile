requires 'PadWalker';
requires 'Type::Tiny';

on 'test' => sub {
    requires 'Test2';
    requires 'Test2::Suite';

    requires 'Moo';
};

