use strict;
use Test::More;
use xt::Run;

my $local_lib = "$ENV{PERL_CPANM_HOME}/perl5";
run "-L", $local_lib, "--skip-satisfied", "--notest", "CPAN::Meta";

like last_build_log, qr/installed CPAN-Meta/;

done_testing;

