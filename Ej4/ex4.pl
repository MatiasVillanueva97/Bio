#!/user/bin/perl
use strict;
use warnings;
use Bio::SearchIO;
use Bio::SeqIO;
use Bio::DB::GenPept;

my $blast_donde_buscar = $ARGV[0];
my $patron_a_buscar = $ARGV[1];

my $blast_input = Bio::SearchIO->new( -format => 'blast',-file   => $blast_donde_buscar );
my $gp = Bio::DB::GenPept->new(-retrievaltype => 'tempfile',-format => 'Fasta');
my $out = Bio::SeqIO->new(-file => '>Ex4 - Coincidencias.fas',-format => 'fasta' );

while ( my $result = $blast_input->next_result() ) {
	while( my $hit = $result->next_hit ) {
	    # Bio::Search::Hit::HitI object
	    my $nombre = $hit->name();
	    my $desc = $hit->description;
	    if( tiene($desc, $patron_a_buscar) ){

    	print $nombre;
		print "\n";
	
		my $str_match = '|';
		my $str_acc = $hit->accession();
	  	my $str_search = $str_acc;
	 	my $indx_pos = index($str_acc, $str_match);
 
	  	if ($indx_pos != -1) {
	      		$indx_pos += length($str_match);
              		$str_search = substr($str_acc, $indx_pos, length($str_acc) - $indx_pos);
	  	}
          	$out->write_seq($gp->get_Seq_by_version($str_search));

	   }

	}

}

sub tiene{
    return index(uc($_[0]), uc($_[1])) != -1;
}