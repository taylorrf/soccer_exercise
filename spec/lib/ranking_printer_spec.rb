require './lib/ranking_printer'

describe RankingPrinter do
  it 'get a formatted ranking string to be printed' do
    sample_input = <<-EOF
Grêmio 3, Santa Fe 0
Palmeiras 2, Atlético 2
Universidad Católica 1, Guaraní 0
Santos 1, Estudiantes 2
Grêmio 2, Estudiantes 1
    EOF

    expected_output = <<-EOF
1. Grêmio, 6 pts
2. Estudiantes, 3 pts
3. Universidad Católica, 3 pts
4. Atlético, 1 pt
5. Palmeiras, 1 pt
6. Santos, 0 pts
7. Santa Fe, 0 pts
8. Guaraní, 0 pts
    EOF

    object = described_class.new(sample_input)

    expect(object.print).to eql(expected_output)
  end
end
