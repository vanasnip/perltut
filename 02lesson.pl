use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading...\n";
	#print get("http://www.ivandash.com/");
	getstore("http://www.ivandash.com/","lsn02_download.html");
	print "finished\n";
}

main();
