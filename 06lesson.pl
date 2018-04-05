use strict;
use warnings;

$|=1;

sub main {
		  sub exe01 {print "hello world\n";}
		  # exe01();
		  sub exe02{
				my @emails = (
					'ivano@dancing.com',
					'icannewait@nomore.com',
					'@somethingwrong.com',
					'noone@here.com',
					'rasengan@naruto',
				);
		 		
				foreach my $email(@emails){
					print "$email\n";
					if($email =~ /\w+@\w+\.\w+/){
						print ":::This email is valid:::\n";
					} else {
						print "|||This email is NOT valid|||\n";
					}

				}		  
		  }
		  exe02();
}

main();


#exe 02 - create array of strings
#			some valid, some invalid
#			loop through array print each email address 
#			.@.\..
