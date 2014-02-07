extract.pl
=======
Written in perl and must be invoked from the command line on a system that has perl installed (5.10 or higher)

This is a command line utility that returns a specific portion of a particular file (designated by the start and end lines).
Using this utility is extremely simple -- All you need is a start line, and end line, and a filename.
Example Usage:

#testuser@example:~$ perl extract.pl 500 1000 logfile.txt

Executing the above command would display lines 500 to 1000 (inclusive) in 'logfile.txt' 
This utility can be nice when commands like 'head' and 'tail' pick up too much output you're not 
particularly interested in.
