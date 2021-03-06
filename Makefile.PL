# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker 6.59;

WriteMakefile(
    NAME               => 'MooX::ClassOnlyConstructor',
    AUTHOR             => 'Jim Bacon <jim@nortx.com>',
    VERSION_FROM       => 'lib/MooX/ClassOnlyConstructor.pm',
    ABSTRACT_FROM      => 'lib/MooX/ClassOnlyConstructor.pm',
    LICENSE            => 'Perl',
    PL_FILES           => {},
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.59,
    },
    BUILD_REQUIRES => {
        'Test::More'      => 0,
        'Test::Exception' => 0,
    },
    PREREQ_PM => {

        # NOTE the use of quotes around non-numeric strings!
        #'Foo::Bar::Module' => 0,
        #'Foo::Bar::Module' => 5.004001,
        #'Foo::Bar::Module' => '5.4.1',
        #'Foo::Bar::Module' => 'v5.4.1',
        'Moo'                     => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'MooX-ClassOnlyConstructor-*' },
    META_MERGE => { no_index => { directory => [qw( xt )] } },
);
