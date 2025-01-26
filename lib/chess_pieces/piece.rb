class Piece
  def initialize(team, location)
    @captured = false
    @team = team
    @location = location
    @init_location = location
    @moved = false
    
  end
end
