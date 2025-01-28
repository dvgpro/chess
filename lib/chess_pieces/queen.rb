require_relative 'piece'

class Queen < Piece
  attr_reader :team, :inital_loc, :location, :captured, :moved, :valid_dirs

  def initialize(team, location)
    super(team, location)

    @valid_dirs = [
      [1,0],
      [0,1],
      [-1,0],
      [0,-1],
      [1,1],
      [1,-1],
      [-1,1],
      [-1,-1]
    ]
    
  end
end