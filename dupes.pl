use strict;
use warnings;

my $dir = "data";
opendir(DIR, $dir) or die "DirError, can't open $dir: $!";
my @files = readdir(DIR);

my %hash;
my %duplicates;

foreach my $file (@files) {
    next if $file =~ s/^\s+|\s+$//;
    open(FILE, "$dir/$file") or die "FileError, can't open $file: $!";
    while (<FILE>) {
        if (exists $hash{$_}) {
            $duplicates{$_} = 1;
        } else {
            $hash{$_} = 1;
        }
    }
    close(FILE);
}

foreach my $key (keys %duplicates) {
    print "$key";
}

close(DIR);