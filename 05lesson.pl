use strict;
use warnings;

$|=1;#turned off output buffering so we can see what we print immediately

sub main {
	my $output = '>output.txt';
	# '>' tells perl to create file, which is a bit weird
	# alternatively one can concat later as part of the open subroutine
	# for example open(OUTPUT, '>'.$output)...etc dot is used in perl to concat strings. only used then creating files and not reading them.
	open(OUTPUT, $output) or die("Can't create $output.\n");

	print OUTPUT "$output created.";
	close(OUTPUT);	
}

main();
