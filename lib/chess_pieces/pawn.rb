require_relative 'piece'

class Pawn < Piece
  attr_reader :captured, :team, :location, :moved, :directions

  def initialize(team, location)
    super(team, location)
    
    @directions = [
      [1,0],
      [2,0]
    ]

  end 

  def  symbol
    team == 'white' ? "\u2659" : "\u265f"
    
  end
  
end
