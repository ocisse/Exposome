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
        say $l;
     } else {
        my @d = split /,/,$l;
        my $locus = shift @d;
        my $updated = join(",", @d);
           $updated =~s/NA/-1/g;
           $updated =~s/NO_COV/-1/g;
           $updated =~s/(A|T|C|G)/1/g;
           $updated =~s/NO_SNP/0/g; 

           $updated =~s/1111/1/g; # need this to deal with LFWA01000004 187528   =>CATT CATC    120.313 .
           $updated =~s/111/1/g;
           $updated =~s/11/1/g;
           say "$locus,$updated"; 
    }
}

