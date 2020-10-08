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
        # the extra_modules is there so the Pod::Weaver plugin can show the used
        # module's versions
        {code_template=>'use Z;', extra_modules=>['Z']},
        {code_template=>'use Z -modern;', extra_modules=>['Z']},
        {code_template=>'use Z -compat;', extra_modules=>['Z']},
        {code_template=>'use Z -detect;', extra_modules=>['Z']},

        {code_template=>'use Type::Tiny;', extra_modules=>['Type::Tiny']},
        {code_template=>'use Types::Standard;', extra_modules=>['Types::Standard']},

        {code_template=>'use Zydeco;', extra_modules=>['Zydeco']},

        {code_template=>'use Zydeco::Lite;', extra_modules=>['Zydeco::Lite']},

        {code_template=>'use MooX::Press;', extra_modules=>['MooX::Press']},

        {code_template=>'use Moo;', extra_modules=>['Moo']},

        {code_template=>'use Moose;', extra_modules=>['Moose']},
    ],
};

1;
# ABSTRACT:
