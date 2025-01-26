class Pieces
  attr_reader :team, :captured, :initial_move, :location

  def initialize
    @team = ""
    @captured = False
    @initial_move = False
    @location = [nil, nil]
  end
end
