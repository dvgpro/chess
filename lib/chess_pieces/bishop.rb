require_relative 'piece'

class Bishop < Piece
  attr_reader :team, :inital_loc, :location, :captured, :moved, :valid_dirs

  def initialize(team, location)
    super(team, location)

    @valid_dirs = [
      [1,1],
      [1,-1],
      [-1,1],
      [-1,-1]
    ]
    
  end
end