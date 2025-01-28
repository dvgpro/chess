require_relative 'piece'

class Knight < Piece
  attr_reader :team, :inital_loc, :location, :captured, :moved, :valid_dirs

  def initialize(team, location)
    super(team, location)

    @valid_dirs = [
      [2, 1],
      [2, -1],
      [-2, 1],
      [-2, -2],
      [1, 2],
      [1, -2],
      [-1, 2],
      [-1,-2]
    ]
    
  end
end
