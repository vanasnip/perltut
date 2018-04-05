use strict;
use warnings;

$|=1;

sub main {
  # exe01(); #-------------------------------------------
  #exe 01 - print to console hello world
  sub exe01 {print "hello world\n";}

  # exe02();#-------------------------------------------
  #		  create array of strings
  #			some valid, some invalid
  #			loop through array print each email address 
  #			.@.\..
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
        print ":::$email  is valid:::\n";
      } else {
        print "|||$email is NOT valid|||\n";
      }
    }		  
  }
   exe03(); #-------------------------------------------
  sub exe03{
    my $text = "The code for this devise is GP0988.";
    if($text =~ /([A-Z]{2}\d{4})/){
      print "The code is: $1\n";
    } else {
	print "Not Found.\n";	
    }
    if($text =~ /\bis\s(.+?)\./){
	print "The code is: $1\n";
    } else {
	print "Not found.\n";
    }
    if($text =~ /([A-Z]{2}\d{2,6})/){
      print "The code is: $1\n";
    } else {
	print "Not Found.\n";	
    }
  }


}

main();




