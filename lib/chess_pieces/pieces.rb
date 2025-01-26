class Pieces
  attr_reader :team, :captured, :initial_move

  def initialize
    @team = ""
    @captured = False
    @initial_move = False
  end
end
