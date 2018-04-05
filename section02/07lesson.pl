use strict;
use warnings;

$|=1;

sub main{
	my $input = 'test.csv';
	
	unless(open(INPUT, $input)){
		die "\nCannot open $input\n";
	}
	<INPUT>;#This runs off the first line from the file which is the headers before it gets to the loop so we only print the values
	while(my $line = <INPUT>){
		my @values = split(',',$line);
		print $values[0]."\n";
	}

	close(INPUT);
}

main();
