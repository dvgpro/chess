require-relative 'pieces'

class Pawn < Pieces
  attr_reader :movement_direction_set, :attack_direction_set, :piece_symbol

  def initialize
    @movement_direction_set = [
      [1,0],
      [2,0]
    ]

    @attack_direction_set = [
      [1,1],
      [1,-1]
    ]

    @piece_symbol = assign_symbol_color

  end

  def assign_symbol_color
    @self.team == "white" ? "\u2659" : "\u265f"
    
  end
end
