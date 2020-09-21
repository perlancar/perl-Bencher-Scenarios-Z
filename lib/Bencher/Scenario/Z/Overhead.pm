package Bencher::Scenario::Z::Overhead;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Measure startup overhead of Z',
    code_startup => 1,
    participants => [
        {code_template=>'use Z;'},
        {code_template=>'use Z -modern;'},
        {code_template=>'use Z -compat;'},
        {code_template=>'use Z -detect;'},
    ],
};

1;
# ABSTRACT:
