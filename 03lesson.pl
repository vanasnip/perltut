use strict;
use warnings;
use LWP::Simple;

sub main {
	if(-f 'mahmuhmia.jpg'){
		print "Found file\n";
	} else {
		print "File not found\n";
	}
}

main();
