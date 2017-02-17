require 'optparse'
require './lib/cli'

options = {}

OptionParser.new do |parser|
  parser.banner = "Usage: soccer_ranking.rb [options]"

  parser.on("-h", "--help", "Show this help message") do ||
    puts parser
  end

  parser.on("-f", "--file FILEPATH", "The absolute path to the .txt file with the games results.") do |v|
    options[:file] = v
  end

  parser.on("-e", "--example", "Use the example .txt file of this project to generate the ranking.") do |v|
    options[:example] = true
  end
end.parse!

if options[:file]
  print CLI.run(options[:file])
end

if options[:example]
  print CLI.run('support/sample-input.txt')
end
