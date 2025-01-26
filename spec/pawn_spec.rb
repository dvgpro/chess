require './lib/chess_pieces/pawn'

describe Pawn do
  describe "#symbol" do
    it "returns white pawn unicode" do
      p1 = Pawn.new( 'white', [1,1] )
      expect(p1.symbol).to eql("\u2659")
    end

    it "returns black pawn unicode" do
      p2 = Pawn.new( 'black', [1,1] )
      expect(p2.symbol).to eql("\u265f")
    end
  end
end
