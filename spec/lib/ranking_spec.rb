require './lib/ranking'

describe Ranking do
  it 'have a ranked hash by scores with some few teams' do
    expected_output =  [{ "Grêmio" => 3 },
                        { "Atlético" => 1 },
                        { "Palmeiras" => 1 },
                        { "Santa Fe" => 0 }]

    object = described_class.new(FEW_TEAMS)

    expect(object.calculate).to eql(expected_output)
  end

  it 'have a ranked hash by scores with many team' do
    expected_output = [{ "Grêmio" => 6 },
                      { "Estudiantes" => 3 },
                      { "Universidad Católica" => 3 },
                      { "Atlético" => 1 },
                      { "Palmeiras" => 1 },
                      { "Santos" => 0 },
                      { "Santa Fe" =>0 },
                      { "Guaraní" => 0 }]

    object = described_class.new(MANY_TEAMS)

    expect(object.calculate).to eql(expected_output)
  end

  it 'have an empty array to an empty input' do
    object = described_class.new('')

    expect(object.calculate).to eql([])
  end
end

FEW_TEAMS = <<-EOF
Grêmio 3, Santa Fe 0
Palmeiras 2, Atlético 2
EOF

MANY_TEAMS = <<-EOF
Grêmio 3, Santa Fe 0
Palmeiras 2, Atlético 2
Universidad Católica 1, Guaraní 0
Santos 1, Estudiantes 2
Grêmio 2, Estudiantes 1
EOF
