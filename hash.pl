use strict;
use warnings;
use utf8;
use JSON;
use File::Basename;
use File::Spec;

sub read_data {
    my $data_file = File::Spec->catfile(dirname(__FILE__), "data", "supplements.json");
    open(my $fh, "<", $data_file) or die $!;
    my $json = do { local $/; <$fh> };
    return decode_json($json);
}

sub main {
    my $data = read_data();
    print "$data
    ";
}

main();
