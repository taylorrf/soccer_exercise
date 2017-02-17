## Soccer Ranking Exercise

The Problem
===========
Create a command-line application that will calculate the ranking table for a soccer league.

Input/output
------------
The input and output will be text. Your solution should parse the provided
sample-input.txt file via stdin (pipe or redirect) or by parsing a file passed
by name on the command line. Your solution should output the correct result via
stdout to the console.

The input contains results of games, one per line.

You can expect that the input will be well-formed. There is no need to add
special handling for malformed input files.

The rules
---------
In this league, a draw (tie) is worth 1 point and a win is worth 3 points. A
loss is worth 0 points. If two or more teams have the same number of points,
they should have the same rank and be printed in alphabetical order.

Platform support
----------------
This will be run in a unix-ish environment (OS X).

Solution
===========
Using ruby 2.4.0 and RSpec

To install the unique dependency: `gem install rspec`

# running tests
$ rspec

# Using the Command Line
From the root directory of this project on your OS command line:
$ ruby soccer_ranking.rb --help

# Author
Tailor Fontela (February 2017)
