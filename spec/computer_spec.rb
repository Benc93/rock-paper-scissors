require 'computer'

describe Computer do

  let(:computer) { Computer.new }

  it 'should have choices between rock, paper and scissors' do
    expect(computer.choices).to eq [:rock, :paper, :scissors]
  end

  it 'should randomly choose a weapon' do
    expect(computer.choice).not_to be nil 
  end
    
end