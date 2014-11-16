class Game

  attr_accessor :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner(player_choice, computer_choice)
    win_combos = {scissors: :paper, rock: :scissors, paper: :rock}
    return "Draw" if player_choice == computer_choice
    return "Player wins" if win_combos[player_choice] == computer_choice
    return "Computer wins"

  end

end