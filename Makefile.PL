use inc::Module::Install;
name 'MouseX-Types';
all_from 'lib/MouseX/Types.pm';

requires 'Mouse' => 0.15;

tests 't/*.t t/*/*.t';
author_tests 'xt';

build_requires 'Test::More';
build_requires 'Test::Exception';
build_requires 'Scalar::Util';

auto_include;
auto_set_repository;
WriteAll;
