#!/usr/bin/perl
use strict;

print "Type the sentence you want to check.\n";
my $input = <STDIN>; #taking input string

#parsing input string into an array
my @arr = split(' ', $input );

my $len = @arr; #storing array length

#importing Levenshtein library
use Text::Levenshtein qw(distance);

#storing words into an array named as data

open(FILE, "linux_cmds.txt") or die("Unable to open file");
#comment above line and uncomment below line to change the check over all english words
#open(FILE, "dictionary.txt") or die("Unable to open file");

my @data = <FILE>;

#loops comparing each word of sentence to the nearest word in dictionay
for (my $i = 0; $i < $len; $i = $i + 1)
{
    chomp $arr[$i];
    foreach my $file (@data)
    {
        chomp $file;
        my $distances = distance($file,$arr[$i]);
        if($distances == 1 || $distances == 2 )
        {
            print "Type y/Y & Enter if you want to replace '$arr[$i]' with '$file' or else print any other key & Enter \n^";
            my $resp = <STDIN>;
            chomp $resp;
            if($resp eq "y" || $resp eq "Y" )
            {
                $arr[$i] = $file;
                last ;
            }
            
        }
    }
}
 
close(FILE);

#printing final corrected sentence
print "Your corrected sentence is: \n";

for ($b = 0; $b < $len; $b = $b + 1)
{
    print "$arr[$b] ";
}


