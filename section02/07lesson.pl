use strict;
use warnings;

use Data::Dumper;


$|=1;

sub main{
	my $input = 'test.csv';
	
	unless(open(INPUT, $input)){
		die "\nCannot open $input\n";
	}
	<INPUT>;#This runs off the first line from the file which is the headers before it gets to the loop so we only print the values
	#perl actually puts this into $_ for some nonsense reason;
	
	while(my $line = <INPUT>){
		chomp $line; #More perl nonsense, context when dealing with lines we are working with record separator for each line "<INPUT> being line"
			     #The default line separator is new line "\n", chomp gets rid of trailing record separators from your records.
			     #I'm sure this has some wonderful implication however it also helps make the case that perl sucks $/ by default <<<???
		print "'$line'\n";
		my @values = split(',',$line);
		#print join ('|', @values);
		print Dumper(@values);	
		#using dumper to see the data structure
	}

	close(INPUT);
}

main();
