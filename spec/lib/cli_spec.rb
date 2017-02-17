require 'cli'

describe 'CLI' do
  it 'parse when a file exist' do
    output = CLI.run('./spec/support/la.txt')
    expect(output).to_not be_nil
  end

  it 'have a nice message when the file doesnt exist' do
    output = CLI.run('./spec/support/InterSerieA.txt')
    expect(output).to eq("\nFile ./spec/support/InterSerieA.txt not found. Are you sure it exist?\n")
  end
end
