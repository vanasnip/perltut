use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading...\n";
	#print get("http://www.ivandash.com/");
	
	#getstore("http://www.ivandash.com/","lsn02_download.html");
	# location url, filename
	
	#getstore("http://ivandash.com/images/01html.png","mahmuhmia.png");
	#using single quotes to tell perl that just treat it as a string	
	#this does not work over https which unfortunately is everywhere now, stackoverflow it!
	
	my $code = getstore("https://78.media.tumblr.com/aafbd8301b11deb0e24b7b62bb29ab67/tumblr_p0958rISuj1qeg3q3o5_1280.jpg","mahmuhmia.jpg");
	if($code == 200){
		print "Success\n";
	}
	else {
		print "Failed\n";
	}
	print "Finished\n";
}

main();
