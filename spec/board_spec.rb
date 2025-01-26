require "./lib/board"

describe Board do
  describe "out_of_bounds?" do
    it "returns false if location is inside the grid" do
      b0 = Board.new
      loc = [7,7]
      expect( b0.out_of_bounds?(loc) ).to eql(false)
    end

    it "returns false if location is inside the grid" do
      b1 = Board.new
      expect( b1.out_of_bounds?([0,0]) ).to eql(false)
    end

    it "return true if location is outside the grid" do
      b4 = Board.new
      expect( b4.out_of_bounds?([8,8]) ).to eql(true)
    end

    it "return true if location is outside the grid" do
      b5 = Board.new
      expect( b5.out_of_bounds?([9,7]) ).to eql(true)
    end

  end
end