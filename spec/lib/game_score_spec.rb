require './lib/team'
require './lib/game_score'

describe GameScore do
  it 'match the winner' do
    sample_input = 'Grêmio 5, Inter 0'
    expected_output = { 'Grêmio' => 3, 'Inter' => 0 }

    object = described_class.new(sample_input)

    expect(object.calculate).to eql(expected_output)
  end

  it 'proprely match the winner with a long name' do
    sample_input = 'Inter 0, Grêmio FBPA 5'
    expected_output = { 'Inter' => 0, 'Grêmio FBPA' => 3 }

    object = described_class.new(sample_input)

    expect(object.calculate).to eql(expected_output)
  end

  it 'match a draft' do
    sample_input = 'Grêmio 3, Corinthians 3'
    expected_output = { 'Grêmio' => 1, 'Corinthians' => 1 }

    object = described_class.new(sample_input)

    expect(object.calculate).to eql(expected_output)
  end

  it 'proprely match a draft with a long score' do
    sample_input = 'Grêmio 300, Corinthians 300'
    expected_output = { 'Grêmio' => 1, 'Corinthians' => 1 }

    object = described_class.new(sample_input)

    expect(object.calculate).to eql(expected_output)
  end

  it 'proprely match a draft with a long score and long names' do
    sample_input = 'Grêmio FBPA 300, Mazembe Footbal Club 300'
    expected_output = { 'Grêmio FBPA' => 1, 'Mazembe Footbal Club' => 1 }

    object = described_class.new(sample_input)

    expect(object.calculate).to eql(expected_output)
  end
end
