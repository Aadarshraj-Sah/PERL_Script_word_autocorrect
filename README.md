# PERL_Script_word_autocorrect
Suggests spelling mistakes and asks for correction.

In order to run the programme
firstly you need to install 'Levenshtein library'
I installed it in macOS Big Sur using following commands:
	 ``
	perl -MCPAN -e shell      
	Install Text::Levenshtein 
	``

Hopefully this should work on Linux also

Or it can be downloaded using below link
https://cpan.metacpan.org/authors/id/N/NE/NEILB/Text-Levenshtein-0.14.tar.gz
________________________________________________________________________________


The command that has to be typed from command prompt to execute your programme:
 	
  ``perl 200101001.pl 
	``

________________________________________________________________________________


Some Salient features of my programme are as follows : 


*	This is the PERL programme to correct typos in any sentence.
	It will check the sentence word by word.

*	It can detect upto TWO mistyped letters in a word and will suggest 
	possible correct words.

*	Then it will ask whether you want to replace the suggested word, 
	if you type 'y/Y' & Enter then it will change the word or 
	if you type any other key & Enter then it will suggest more possible words.

*	Currently the programme is coded just to identify typos in LINUX commands.

*	My programme can be extended to identify typos in any English sentence
	by changing the input file from 'linux_cmds.txt' to 'dictionary.txt'. 
	This instruction is mentioned in line 18 of my programme 200101001.pl.



