#!/hpcdata/dcr_cc/Ousmane_Data/projects/Pneumo_Comp_Genomics/temp/data/cisseoh/conda/envs/Pneumocystis_comp_gen/bin/perl -w
#
#
use strict;
use feature 'say';
use Carp;
use IO::All;
use File::Basename;

my $count = 1;

my $dir = io($ARGV[0]);
my @files = @$dir;
my %files = %$dir;

say "samples:";
for  (@files){
   if ($_ =~ m/_1\.fastq\.gz/){
    
       my $name = basename($_);
       # check that the r2 exists
        my $r2 = $name;
            $r2 =~s/_1.fastq.gz/_2.fastq.gz/; 
        if ($files{$r2}){
            $name =~s/_1.fastq.gz//;
            print " $name: $_\n";
            $count++;
        } else {
            #
        }
    } else {
        #
    }
}
