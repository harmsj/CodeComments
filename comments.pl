#!/usr/bin/perl
###############################################################################
#
# File: comments.pl
# Author: Jon Harms (harmsj@gmail.com)
# Version: 0.1
# Purpose: Find any ten consecutive lines that contain no comments in Perl code.
#
###############################################################################

open(FILE, "search.pl");

my $counter = 0;
my $linenum = 0;

#Read each line in the file
while ( <FILE> ) {
	$linenum++;

	#Does the line contain a comment?
	if ($_ !~ /\#/i) {
		$counter++;
	} else {
		$counter = 0;
	}
	
	#If there is too many lines without a comment then print a message
	if ($counter >= 10) {
		print "There needs to be more comments to describe your code around line $linenum!\n";
		$counter = 0;
	}
}
