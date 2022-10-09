use strict;
use warnings;

my $dir = "data";
opendir(DIR, $dir) or die "can't open $dir: $!";
my @files = readdir(DIR);
closedir(DIR);

foreach my $file (@files) {
    next if $file =~ /^\./;
    my $count = 0;
    open(FILE, "$dir/$file") or die "can't open $file: $!";
    while (<FILE>) {
        $count++;
    }
    close(FILE);
    print "$file\t$count
";
}