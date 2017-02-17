require './lib/team'

describe Team do
  it 'have a name and score' do
    team = described_class.new("Gremio 1")
    expect(team.name).to eq('Gremio')
    expect(team.score).to eq(1)
  end

  it 'can have two names' do
    team = described_class.new("Gremio FBPA 3")
    expect(team.name).to eq('Gremio FBPA')
    expect(team.score).to eq(3)
  end

  it 'can have a large name' do
    team = described_class.new("Gremio Football Porto Alegrense 3")
    expect(team.name).to eq('Gremio Football Porto Alegrense')
    expect(team.score).to eq(3)
  end

  it 'can deal properly with empty string' do
    team = described_class.new("")
    expect(team.name).to eq('')
    expect(team.score).to eq(0)
  end

  it 'can deal properly with nil' do
    team = described_class.new(nil)
    expect(team.name).to eq('')
    expect(team.score).to eq(0)
  end
end
