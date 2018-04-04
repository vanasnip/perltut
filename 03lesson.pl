use strict;
use warnings;
use LWP::Simple;

sub main {
	my $file = 'mahmuhmia.jpg';
	
	if(-f $file){
		print "Found file $file\n";
	} else {
		print "File $file not found\n";
	}
}

main();
