class GameController
  attr_reader :comp_move, :outcome

  def paper
    # move our logic to the game controller
    @comp_move = ["rock", "paper", "scissors"].sample
      
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome =  "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    self
  end
end
