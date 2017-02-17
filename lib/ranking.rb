class Ranking
  attr_reader :scores, :games

  def initialize(input, score = GameScore)
    @games = input.split("\n")
    @scores = games.map { |game| score.new(game).calculate }
  end

  def calculate
    return [] if scores.empty?
    calculated_scores.sort_by(&:values).reverse
  end

  private

  def calculated_scores
    ordered_scores.map do |key, value|
      Hash[key, value.map(&:last).inject(0) { |sum, v| sum + v }]
    end
  end

  def ordered_scores
    scores.flat_map(&:entries).group_by(&:first)
  end
end
