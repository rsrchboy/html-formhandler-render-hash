# Check to make sure we can be composed into a class

use strict;
use warnings;

use Test::More;
use Test::Moose;

use Moose ();
use HTML::FormHandler;

# will die horribly on error
my $meta = Moose::Meta::Class->create_anon_class(
    superclasses => [ 'HTML::FormHandler'               ],
    roles        => [ 'HTML::FormHandler::Render::Hash' ],
);

# if we get here, we're good
pass;

done_testing;
