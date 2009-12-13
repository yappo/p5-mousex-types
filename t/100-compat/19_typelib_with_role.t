#!/usr/bin/env perl
use strict;
use warnings;
 
use Test::More tests => 1;

{
    package MyRole;
    use Mouse::Role;
    requires 'foo';
}

eval q{

    package MyClass;
    use Mouse;
    use MouseX::Types -declare => ['Foo'];
    use MouseX::Types::Mouse 'Int';
    with 'MyRole';

    subtype Foo, as Int;

    sub foo {}
};

ok !$@, 'type export not picked up as a method on role application';
