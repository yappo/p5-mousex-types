package MouseX::Types::Mouse;
use strict;
use warnings;

use Mouse::Util::TypeConstraints ();
use MouseX::Types;

use constant type_storage => {
    map { $_ => $_ } Mouse::Util::TypeConstraints->list_all_builtin_type_constraints
};
1;
