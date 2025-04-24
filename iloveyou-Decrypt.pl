#!/usr/bin/perl -w
## Wed Sep 19 20:12:41 PDT 2012
## Christopher ctopher@me.com

use strict;


my %writeup = (

	'1' => "a",
	'2' => "b",
	'3' => "c",
	'4' => "d",
	'5' => "e",
	'6' => "f",
	'7' => "g",
	'8' => "h",
	'9' => "i",
	'10' => "j",
	'11' => "k",
	'12' => "l",
	'13' => "m",
	'14' => "n",
	'15' => "o",
	'16' => "p",
	'17' => "q",
	'18' => "r",
	'19' => "s",
	'20' => "t",
	'21' => "u",
	'22' => "v",
	'23' => "w",
	'24' => "x",
	'25' => "y",
	'26' => "z",

);



my %punk = (

	"1 & 14 & 0 & 14 & 1 & xx" => "1",
	"2 & 15 & 0 & 15 & 2 & xx" => "2",
	"3 & 16 & 0 & 16 & 3 & xx" => "3",
	"4 & 17 & 0 & 17 & 4 & xx" => "4",
	"5 & 18 & 0 & 18 & 5 & xx" => "5",
	"6 & 19 & 0 & 19 & 6 & xx" => "6",
	"7 & 20 & 0 & 20 & 7 & xx" => "7",
	"8 & 21 & 0 & 21 & 8 & xx" => "8",
	"9 & 22 & 0 & 22 & 9 & xx" => "9",
	"10 & 23 & 0 & 23 & 10 & xx" => "10",
	"11 & 24 & 0 & 24 & 11 & xx" => "11",
	"12 & 25 & 0 & 25 & 12 & xx" => "12",
	"13 & 26 & 0 & 26 & 13 & xx" => "13",
	"0 & 1 & 14 & 0 & 14 & 1" => "14", 
	"0 & 2 & 15 & 0 & 15 & 2" => "15",
	"0 & 3 & 16 & 0 & 16 & 3" => "16",
	"0 & 4 & 17 & 0 & 17 & 4" => "17",
	"0 & 5 & 18 & 0 & 18 & 5" => "18",
	"0 & 6 & 19 & 0 & 19 & 6" => "19",
	"0 & 7 & 20 & 0 & 20 & 7" => "20",
	"0 & 8 & 21 & 0 & 21 & 8" => "21",
	"0 & 9 & 22 & 0 & 22 & 9" => "22",
	"0 & 10 & 23 & 0 & 23 & 10" => "23",
	"0 & 11 & 24 & 0 & 24 & 11" => "24",
	"0 & 12 & 25 & 0 & 25 & 12" => "25",
	"0 & 13 & 26 & 0 & 26 & 13" => "26",
);



my @word_list = ();
my $file = <@ARGV>;

open (FI, $file) || die "sorry dave bad file $file $!\n";

while (<FI>) {

	chomp;

	push @word_list, $_;

}



my $key_list = join '|', keys %punk;

my $re = qr/($key_list)(\.oo)/;
	

	foreach my $item (@word_list) {
		my $message = $item; 

		if ($message =~ /\.oo$/) {


		$message =~ s/$re/$1/;
#		print "$message\n";

		my $data = &Qrun($message);
		

		print "$data\n";

		} else {

			my $data2 = &Qrun($message);


			print "$data2 ";
		} 


	}





sub Qrun {
	my $message = shift;
	my @set = ();

	push @set, $message;

	my $count = @set;
	my $info = "1";

	foreach my $item (@set) {
			my $key = $punk{$item};
			my $var = $writeup{$key};

#			print "$var\n";
			return $var;
	}
}

exit(0);



