#!/usr/bin/env perl

use strict;
use Test::More tests => 1;

printf "\n%s\n", "Testing whether CA certificates are newer than \"~/etc/ca_hashes.txt\" ...";
my $newer_bundles=`find etc/*.pem -newer etc/ca_hashes.txt`;
is($newer_bundles,"","List of CA bundles newer then etc/ca_hashes.txt should be empty. If not run utils/create_ca_hashes.sh");
done_testing;
