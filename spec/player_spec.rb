require 'Player'

describe Player do

  let(:player) {Player.new('Ben')}

  it 'should have a name' do
    expect(player.name).to eq 'Ben'
  end

  it 'should initialize without making a choice' do
    expect(player.choice).to eq nil
  end

  it 'should be able to make a choice' do
    expect(player.choose("rock")).to eq "rock"
  end

end