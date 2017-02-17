require_relative 'team'
require_relative 'game_score'
require_relative 'ranking'
require_relative 'ranking_printer'

module CLI
  def self.run(filename)
    if File.exist?(filename)
      file =  File.open(filename, "rb")
      RankingPrinter.new(file.read).print
    else
      "\nFile #{filename} not found. Are you sure it exist?\n"
    end
  end
end
