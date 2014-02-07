#!/usr/bin/perl
#Command Line Utility
#This utility takes 3 arguments: The starting line, the ending line, and the filename
#and returns those specific lines in the filename supplied.
use warnings;
use strict;

if ( $#ARGV < 2 )
{
  print "Usage: extract.plx start stop filename\n";
  exit 1;
}

my $start = $ARGV[0];
my $stop  = $ARGV[1];
my $file  = $ARGV[2];

if($start >= $stop)
{
	print "Error:  start value must be less than end value -- quitting\n"
	exit 1;
}

open (FILE,$file) || die "Can't open file \"$file\".\n";

my $count=0;
while (<FILE>)
{
  $count++;
  if ( $count >= $start  &&  $count <= $stop )
  {
     print;
  }
  last if ($count > $stop);
}

close(FILE);
exit 1;
