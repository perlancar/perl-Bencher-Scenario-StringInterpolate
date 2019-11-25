package Bencher::Scenario::StringInterpolate;

# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark string interpolation',
    participants => [
        {
            fcall_template => 'String::Interpolate::interpolate(<string>)',
        },
        {
            name => 'eval',
            code_template => 'eval q("<string:raw>")',
        },
    ],
    datasets => [
        {args => {string=>'$main::foo $main::bar'}},
    ],
};

package main;
our $foo = "Foo";
our $bar = "BAR";

1;
# ABSTRACT:
