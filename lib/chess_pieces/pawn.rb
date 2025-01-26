class Pawn
  attr_reader :captured, :team, :location, :moved, :directions

  def initialize(team, location)
    @captured = false
    @team = team
    @location = location
    @moved = false
    
    @directions = [
      [1,0],
      [2,0]
    ]

  end 

  def  symbol
    team == 'white' ? "\u2659" : "\u265f"
    
  end
  
end
