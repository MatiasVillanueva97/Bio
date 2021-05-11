use Bio::SeqIO;
use Bio::PrimarySeq;

$input_file_name = 'secuencia.gb';
$seqio_obj = Bio::SeqIO->new(-file=> $input_file_name, -format=> 'genbank');
$prot_obj = Bio::SeqIO->new(-file => '>protein.fas', -format=>'fasta');

while ($ind_seq = $seqio_obj->next_seq) {

    if($ind_seq->validate_seq($ind_seq->seq)) {

        @proteins = Bio::SeqUtils->translate_6frames($ind_seq);

        $prot_obj->write_seq(@proteins);

    } else {

        die 'Secuencia invalida';

    }

}