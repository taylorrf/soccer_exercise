class GameScore
  attr_reader :team1, :team2

  def initialize(game)
    games = game.split(',')
    @team1 = Team.new(games.slice(0))
    @team2 = Team.new(games.slice(1))
  end

  def calculate
    draft || match(team1, team2) || match(team2, team1)
  end

  private

  def draft
    Hash[team1.name, 1, team2.name, 1] if team1.score == team2.score
  end

  def match(winner, looser)
    Hash[winner.name, 3, looser.name, 0] if winner.score > looser.score
  end
end
