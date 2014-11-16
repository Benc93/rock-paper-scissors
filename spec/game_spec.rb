require 'game'

describe Game do

  let(:game) {Game.new(player, computer)}
  let(:player) { double :player, name: 'Player' }
  let(:computer) { double :computer, name: 'Computer' }
 
  context 'when the game starts...' do

    it 'should initialise with one player' do
      expect(game.player).to eq player
    end

    it 'shoud initialize with one computer player' do
      expect(game.computer).to eq computer
    end



  context 'should know when to draw a match' do 

    it 'two rocks equal a draw' do
      expect(game.winner(:rock, :rock)).to eq "Draw"
    end

    it 'two papers equal a draw' do
      expect(game.winner(:paper, :paper)).to eq "Draw"
    end

    it 'two scissors equal a draw' do
      expect(game.winner(:scissors, :scissors)).to eq "Draw"
    end

  context 'should know when a match has a winner' do 

    it 'between paper and scissors' do
      allow(player).to receive(:choice).and_return :paper
      allow(computer).to receive(:choice).and_return :scissors
      expect(game.winner(:paper, :scissors)).to eq "Computer wins"
    end

    it 'between scissors and rock' do
      allow(player).to receive(:choice).and_return :scissors
      allow(computer).to receive(:choice).and_return :rock
      expect(game.winner(:scissors, :rock)).to eq "Computer wins"
    end

    it 'between paper and rock' do
      allow(player).to receive(:choice).and_return :rock
      allow(computer).to receive(:choice).and_return :paper
      expect(game.winner(:rock, :paper)).to eq "Computer wins"
    end

    it 'between rock and paper' do
      allow(player).to receive(:choice).and_return :paper
      allow(computer).to receive(:choice).and_return :rock
      expect(game.winner(:paper, :rock)).to eq "Player wins"
    end

    it 'between scissors and paper' do
      allow(player).to receive(:choice).and_return :scissors
      allow(computer).to receive(:choice).and_return :paper
      expect(game.winner(:scissors, :paper)).to eq "Player wins"
    end

    it 'between rock and scissors' do
      allow(player).to receive(:choice).and_return :rock
      allow(computer).to receive(:choice).and_return :scissors
      expect(game.winner(:rock, :scissors)).to eq "Player wins"
    end

    
  end
  end
  end
end