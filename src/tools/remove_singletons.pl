#!/nethome/cisseoh/perl5/perlbrew/perls/perl-5.20.3-thread-multi/bin/perl -w
#
#
use strict;
use Data::Dumper;
use Carp;
use IO::All;
use feature 'say';
use List::MoreUtils qw(uniq);

my $csv = io($ARGV[0]);
$csv->autoclose(0);
while(my $l = $csv->getline || $csv->getline){
chomp $l;
    if ($l =~ m/^ID/){
        say $l
    } else {
        my @d = split /\,/, $l;
        my @tmp = ();
        my $i = "";
            my ($var) = shift @d;
            foreach $i (@d){
                if ($i !~  m/(NA|NO_COV|NO_SNP)/){
                    push(@tmp, $i);
                }       
            }
            say $l if @tmp > 1;
        
        # want to know if there are discordant case
        #my @uniq_list = uniq(@tmp);
        #say $l if @uniq_list > 1; # nothing 
    }
}

