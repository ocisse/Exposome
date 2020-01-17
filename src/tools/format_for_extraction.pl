#!/nethome/cisseoh/perl5/perlbrew/perls/perl-5.20.3-thread-multi/bin/perl -w
#
#
use strict;
use feature 'say';
use Data::Dumper;
use IO::All; 


# hash contains the proteins ids
my %seqs = load($ARGV[0]);

# extr
my $c = "";
foreach $c (@seqs){
    say $c;	

}
sub load {
	my %h = ();
	my $f = io(@_);
	   $f->autoclose(0);
	   while(my $l = $f->getline || $f->getline){
	   chomp $l;
		my @data = split /\t/,$l;
		my $og = shift @data;
		@{$h{$og}} = @data;
	}
	return(%h);
}
