class Game

  attr_accessor :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner(players_choice, computers_choice)
    win_combos = {scissors: :paper, scissors: :lizard, rock: :scissors, paper: :rock}
    return "Draw" if players_choice == computers_choice
    return "Player wins" if win_combos[players_choice] == computers_choice
    return "Computer wins"

  end

end