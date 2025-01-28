require_relative 'lib/pawn'

class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8, nil) }

    populate_grid
  end

  def populate_grid
    
    [1, 6].each do |row|
      color = row == 1 ? "white" : "black"
      8.times do |col|
        piece = Pawn.new(color, [row, col])
        self[[row, col]] = piece
      end
    end

    [0, 7].each do |row|
      color = row == 0 ? "white" : "black"
      pieces = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
      8.times { |col| self[[row, col]] = pieces[col].new(color, [row, col]) }
    end

  end

  def []=(location, piece)
    row, col = location
    grid[row][col] = piece
  end

  def [](location)
    row, col = location
    grid[row][col]
  end

  def out_of_bounds?(location)
    row, col = location

    (0..7).cover?{row} || (0..7).cover?(col)
  end

end
