use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading...\n";
	#print get("http://www.ivandash.com/");
	
	#getstore("http://www.ivandash.com/","lsn02_download.html");
	# location url, filename
	
	getstore("http://ivandash.com/images/01html.png","mahmuhmia.png");
	#using single quotes to tell perl that just treat it as a string	
	#this does not work over https which unfortunately is everywhere now, stackoverflow it!
	print "finished\n";
}

main();
