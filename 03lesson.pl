use strict;
use warnings;
use LWP::Simple;

$|=1;# turns off output buffering

sub main {
	
	my @files = (
		'mahmuhmia.jpg',
		'mahmuhmia02.jpg',
		'mahmuhmia03.jpg',
		'mahmuhmia04.jpg',
		'mahmuhmia05.jpg',
		'mahmuhmia07.jpg',
	);

	foreach my $file(@files) {
		print "$file\n";
		if(-f $file){
			print "Found file $file\n";
		} else {
			print "File $file not found\n";
		}
	}
}

main();
