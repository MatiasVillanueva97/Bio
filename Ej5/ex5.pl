#!/user/bin/perl
use strict;
use warnings;
use Bio::SeqIO;
use Bio::Factory::EMBOSS;
use Bio::Tools::Run::WrapperBase;


my $factory = new Bio::Factory::EMBOSS; 
my $seqio_gb = Bio::SeqIO->new(-file => "secuencia.gb", 
                             -format => "genbank" );
my $seq_gb = $seqio_gb->next_seq;
my $getorf = $factory->program('getorf'); 
my %getorfsinput = ( -sequence => $seq_gb,
                  -minsize => 22,
                  -outseq => "Ex5-ResultadoORF.fas");

$getorf->run(\%getorfsinput);

my $patmatmotifs = $factory->program('patmatmotifs'); 
my %patinput = ( -sequence => $seq_gb,
              -full => 1,
              -outfile => "Ex5-Resultado.patmatmotifs");

$patmatmotifs->run(\%patinput);