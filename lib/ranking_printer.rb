class RankingPrinter
  def initialize(input, ranking = Ranking)
    @ranking = ranking.new(input).calculate
  end

  def print
    @ranking.map.with_index(1) do |team, index|
      "#{index}. #{team.keys.first}, #{format_points team.values.first}\n"
    end.join
  end

  private

  def format_points(points)
    return "#{points} pt" if points == 1
    "#{points} pts"
  end
end
