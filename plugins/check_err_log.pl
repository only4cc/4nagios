my $fname = shift;
die "Error: Sintaxis $0 <salida_logerror>" if ( length($fname) < 1 );

my $DEBUG=0;

open(my $fh, '<', $fname ) or die "$!\n";
my @lineas=<$fh>;
close($fh);

my $PAT='Apex';
my $NUMERR=0;
foreach my $l ( @lineas ) {
	if ( $l =~ /$PAT/ ) {
		++$NUMERR;
		print $l if $DEBUG;
	}
}
if ( $NUMERR > 0 ) {
	print "WARNING - $NUMERR errores desde ultima revision."; exit(1);
} else {
	print "OK - Sin errores desde ultima revision."; exit(0);
}
#if ($used_space eq '85%') { print "WARNING - $used_space of disk space used."; exit(1);      }
#if ($used_space gt '85%') { print "CRITICAL - $used_space of disk space used."; exit(2); }
#default { print "UNKNOWN - $used_space of disk space used."; exit(3); }
