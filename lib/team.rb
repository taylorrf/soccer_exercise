class Team
  attr_reader :name, :score

  def initialize(info)
    infos = info.to_s.split
    @score = infos.pop.to_i
    @name = infos.join(' ')
  end
end
