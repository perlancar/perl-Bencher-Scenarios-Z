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

        {code_template=>'use Type::Tiny;'},
        {code_template=>'use Types::Standard;'},

        {code_template=>'use Zydeco;'},

        {code_template=>'use Zydeco::Lite;'},

        {code_template=>'use MooX::Press;'},

        {code_template=>'use Moo;'},
    ],
};

1;
# ABSTRACT:
