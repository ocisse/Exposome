#!/nethome/cisseoh/perl5/perlbrew/perls/perl-5.20.3-thread-multi/bin/perl
#
#
#
use strict;
use Data::Dumper;
use Carp;
use IO::All;
use feature 'say';
# collect variants
my %SRR6399527 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399527.vcf");
my $SRR6399527cov = "../../data/processed/Cell_2018/mapping/SRR6399527.cov";

my %SRR6399569 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399569.vcf");
my $SRR6399569cov = "../../data/processed/Cell_2018/mapping/SRR6399569.cov";

my %SRR6399596 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399596.vcf");
my $SRR6399596cov = "../../data/processed/Cell_2018/mapping/SRR6399596.cov";

my %SRR6399614 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399614.vcf");
my $SRR6399614cov = "../../data/processed/Cell_2018/mapping/SRR6399614.cov";

my %SRR6399671 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399671.vcf");
my $SRR6399671cov = "../../data/processed/Cell_2018/mapping/SRR6399671.cov";

my %SRR6399681 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399681.vcf");
my $SRR6399681cov = "../../data/processed/Cell_2018/mapping/SRR6399681.cov";

my %SRR6399682 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399682.vcf");
my $SRR6399682cov = "../../data/processed/Cell_2018/mapping/SRR6399682.cov";

my %SRR6399753 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399753.vcf");
my $SRR6399753cov = "../../data/processed/Cell_2018/mapping/SRR6399753.cov";

my %SRR6399789 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399789.vcf");
my $SRR6399789cov = "../../data/processed/Cell_2018/mapping/SRR6399789.cov";

my %SRR6399802 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399802.vcf");
my $SRR6399802cov = "../../data/processed/Cell_2018/mapping/SRR6399802.cov";

my %SRR6399808 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399808.vcf");
my $SRR6399808cov = "../../data/processed/Cell_2018/mapping/SRR6399808.cov";

my %SRR6399512 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399512.vcf");
my $SRR6399512cov = "../../data/processed/Cell_2018/mapping/SRR6399512.cov";

my %SRR6399520 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399520.vcf");
my $SRR6399520cov = "../../data/processed/Cell_2018/mapping/SRR6399520.cov";

my %SRR6399464 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399464.vcf");
my $SRR6399464cov = "../../data/processed/Cell_2018/mapping/SRR6399464.cov";

my %SRR6399562 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399562.vcf");
my $SRR6399562cov = "../../data/processed/Cell_2018/mapping/SRR6399562.cov";

my %SRR6399870 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399870.vcf");
my $SRR6399870cov = "../../data/processed/Cell_2018/mapping/SRR6399870.cov";

my %SRR6399684 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399684.vcf");
my $SRR6399684cov = "../../data/processed/Cell_2018/mapping/SRR6399684.cov";

my %SRR6399888 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399888.vcf");
my $SRR6399888cov = "../../data/processed/Cell_2018/mapping/SRR6399888.cov";

my %SRR6399953 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399953.vcf");
my $SRR6399953cov = "../../data/processed/Cell_2018/mapping/SRR6399953.cov";

my %SRR6399939 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399939.vcf");
my $SRR6399939cov = "../../data/processed/Cell_2018/mapping/SRR6399939.cov";

my %SRR6399879 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399879.vcf");
my $SRR6399879cov = "../../data/processed/Cell_2018/mapping/SRR6399879.cov";

my %SRR6399803 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399803.vcf");
my $SRR6399803cov = "../../data/processed/Cell_2018/mapping/SRR6399803.cov";

my %SRR6399685 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399685.vcf");
my $SRR6399685cov = "../../data/processed/Cell_2018/mapping/SRR6399685.cov";

my %SRR6399877 = extract_variants("../../data/processed/Cell_2018/variants/SRR6399877.vcf");
my $SRR6399877cov = "../../data/processed/Cell_2018/mapping/SRR6399877.cov";

#say Dumper \%SRR6399527;

# now collect all variants
my @all_var = ((keys %SRR6399527),(keys %SRR6399569),(keys %SRR6399596),(keys %SRR6399614),(keys %SRR6399671),(keys %SRR6399681),(keys %SRR6399682),(keys %SRR6399753),(keys %SRR6399789),(keys %SRR6399802),(keys %SRR6399808),(keys %SRR6399512),(keys %SRR6399520),(keys %SRR6399464),(keys %SRR6399562),(keys %SRR6399870),(keys %SRR6399684),(keys %SRR6399888),(keys %SRR6399953),(keys %SRR6399939),(keys %SRR6399879),(keys %SRR6399803),(keys %SRR6399685),(keys %SRR6399877));

# print table
say "ID,SRR6399527_P1,SRR6399569_P1,SRR6399596_P1,SRR6399614_P1,SRR6399671_P1,SRR6399681_P3,SRR6399682_P5,SRR6399753_U1,SRR6399789_P1,SRR6399802_P5,SRR6399808_P1,SRR6399512_P8,SRR6399520_P1,SRR6399464_P1,SRR6399562_P1,SRR6399870_P1,SRR6399684_P1,SRR6399888_P1,SRR6399953_P1,SRR6399939_P3,SRR6399879_P3,SRR6399803_P3,SRR6399685_P3,SRR6399877_U2";
my $v = "";
my $c = 1;
my $total = scalar @all_var;
foreach $v (@all_var){
    warn"...processing $v/\n";
    my @tmp = split/-/,$v;
        my ($chr,$pos) = @tmp[0..1]; 
        my $id = join("-", ($chr,$pos));
        unless ($SRR6399527{$v}) { $SRR6399527{$v} = no_cov_OR_no_snp($id,$SRR6399527cov)};
        unless ($SRR6399569{$v}) { $SRR6399569{$v} = no_cov_OR_no_snp($id,$SRR6399569cov)};
        unless ($SRR6399596{$v}) { $SRR6399596{$v} = no_cov_OR_no_snp($id,$SRR6399596cov)};
        unless ($SRR6399614{$v}) { $SRR6399614{$v} = no_cov_OR_no_snp($id,$SRR6399614cov)};
        unless ($SRR6399671{$v}) { $SRR6399671{$v} = no_cov_OR_no_snp($id,$SRR6399671cov)};
        unless ($SRR6399681{$v}) { $SRR6399681{$v} = no_cov_OR_no_snp($id,$SRR6399681cov)};
        unless ($SRR6399682{$v}) { $SRR6399682{$v} = no_cov_OR_no_snp($id,$SRR6399682cov)};
        unless ($SRR6399753{$v}) { $SRR6399753{$v} = no_cov_OR_no_snp($id,$SRR6399753cov)};
        unless ($SRR6399789{$v}) { $SRR6399789{$v} = no_cov_OR_no_snp($id,$SRR6399789cov)};
        unless ($SRR6399802{$v}) { $SRR6399802{$v} = no_cov_OR_no_snp($id,$SRR6399802cov)};
        unless ($SRR6399808{$v}) { $SRR6399808{$v} = no_cov_OR_no_snp($id,$SRR6399808cov)};
        unless ($SRR6399512{$v}) { $SRR6399512{$v} = no_cov_OR_no_snp($id,$SRR6399512cov)};
        unless ($SRR6399520{$v}) { $SRR6399520{$v} = no_cov_OR_no_snp($id,$SRR6399520cov)};
        unless ($SRR6399464{$v}) { $SRR6399464{$v} = no_cov_OR_no_snp($id,$SRR6399464cov)};
        unless ($SRR6399562{$v}) { $SRR6399562{$v} = no_cov_OR_no_snp($id,$SRR6399562cov)};
        unless ($SRR6399870{$v}) { $SRR6399870{$v} = no_cov_OR_no_snp($id,$SRR6399870cov)};
        unless ($SRR6399684{$v}) { $SRR6399684{$v} = no_cov_OR_no_snp($id,$SRR6399684cov)};
        unless ($SRR6399888{$v}) { $SRR6399888{$v} = no_cov_OR_no_snp($id,$SRR6399888cov)};
        unless ($SRR6399953{$v}) { $SRR6399953{$v} = no_cov_OR_no_snp($id,$SRR6399953cov)};
        unless ($SRR6399939{$v}) { $SRR6399939{$v} = no_cov_OR_no_snp($id,$SRR6399939cov)};
        unless ($SRR6399879{$v}) { $SRR6399879{$v} = no_cov_OR_no_snp($id,$SRR6399879cov)};
        unless ($SRR6399803{$v}) { $SRR6399803{$v} = no_cov_OR_no_snp($id,$SRR6399803cov)};
        unless ($SRR6399685{$v}) { $SRR6399685{$v} = no_cov_OR_no_snp($id,$SRR6399685cov)};
        unless ($SRR6399877{$v}) { $SRR6399877{$v} = no_cov_OR_no_snp($id,$SRR6399877cov)};

        say "$v,$SRR6399527{$v},$SRR6399569{$v},$SRR6399596{$v},$SRR6399614{$v},$SRR6399671{$v},$SRR6399681{$v},$SRR6399682{$v},$SRR6399753{$v},$SRR6399789{$v},$SRR6399802{$v},$SRR6399808{$v},$SRR6399512{$v},$SRR6399520{$v},$SRR6399464{$v},$SRR6399562{$v},$SRR6399870{$v},$SRR6399684{$v},$SRR6399888{$v},$SRR6399953{$v},$SRR6399939{$v},$SRR6399879{$v},$SRR6399803{$v},$SRR6399685{$v},$SRR6399877{$v}";
        warn"...JOB: $c/$total ...done!\n";
        $c++;
    }
### subs
sub extract_variants {
    my %h = ();
    my $vcf = io(@_);
       $vcf->autoclose(0);
       while(my $l = $vcf->getline || $vcf->getline){
       chomp $l;
            next if $l =~ m/^#/;
            my @d = split /\t/, $l;
            if ($l =~ m/TYPE=snp/){
                #say "TEST\t$l";
                my ($chr,$pos,$ref,$alt) = ($d[0],$d[1],$d[3],$d[4]);
                my $id = join("-", ($chr,$pos,$ref,$alt));
                $h{$id} = $alt; 
            } else {
           
           }
       }
    return(%h);
}
sub store_cov {
    my %h = ();
    my $f = io(@_);
       $f->autoclose(0);
       while(my $l = $f->getline || $f->getline){
       chomp $l;
            my @d = split /\t/, $l;
            my ($chr,$pos,$cov) = @d[0..2];
            my $id = join("-",($chr,$pos));
            $h{$id} = $cov;
       }
    return(%h);
}
sub no_cov_OR_no_snp {
    my ($id,$coverageData) = @_;

    my $answer = "";
    #warn"...searching for $id\tin\t$coverageData\n";
    #warn"...loading coverage data for $coverageData\n";
    #my %coverageData = store_cov($coverageData);
    #warn"......loading coverage data for $coverageData:COMPLETED\n";
    my @tmp = split /-/, $id;
    my ($chr,$pos) = @tmp[0..1];
    my $info = `grep $chr $coverageData | grep -E '\\s$pos\\s'`;
    my @tmp2 = split /\t/, $info;
    my $cov = $tmp2[2];
       $cov =~s/\n$//g; 
    
     if ($cov > 0){ 
       $answer = 'NO_SNP';
    } elsif ($cov == 0) {
        $answer = 'NO_COV';
    } else {
        $answer = 'NA';
    }
    warn"--->\tCHR:$chr\tPOS:$pos\tFILE:\t$coverageData\tCOV:\t$cov\tANSWER:\t$answer\n";
    return($answer);
}
