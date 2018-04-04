use strict;
use warnings;

$|=1;#turned off output buffering so we can see what we print immediately

sub main {
		  my $input = 'mymanjeeves.txt';
		  my $output = '>output.txt';

		  open(INPUT, $input) or	die("input file $input not found.\n");
		  open(OUTPUT, $output) or die("Can't create $output.\n");

		  while(my $line = <INPUT>){
					 if($line =~ /\begg\b/) {
								print OUTPUT "--------- $line";	
					 }	
		  }

		  close(INPUT);
		  close(OUTPUT);	
}

main();
