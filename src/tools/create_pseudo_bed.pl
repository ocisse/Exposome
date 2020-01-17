#!/nethome/cisseoh/perl5/perlbrew/perls/perl-5.20.3-thread-multi/bin/perl -w
#
#
use strict;
use feature 'say';
use IO::All;
use Carp;
use Data::Dumper;


my $csv = io($ARGV[0]);
   $csv->autoclose(0);
   while(my $l = $csv->getline || $csv->getline){
   chomp $l; 
        next if $l =~ m/^ID/;
        my @d = split /-/, $l;
            my ($name,$pos) = @d[0..1];
            # take 5 bp 
            my $start = ($pos - 5);
            my $end = ($pos + 5);
            say "$name\t$start\t$end";
}
   
