require_relative '../board'

describe Board do
  it "Should print out an empty board" do
    board = Board.new
    expect(board.to_s).to eq(" | | \n-----\n | | \n-----\n | | ")
  end

  it "Should initialize with a non-empty board" do
    board = Board.new('XX ,   ,   ')
    expect(board.to_s).to eq("X|X| \n-----\n | | \n-----\n | | ")
  end

  it "Should let us place pieces" do
    board = Board.new
    board.place!(0, 0, 'X')
    expect(board.to_s).to eq("X| | \n-----\n | | \n-----\n | | ")
  end

  describe "gameOver?" do
    it "should return true on a full board" do
      board = Board.new('XXO,OOX,XOX')
      expect(board.gameOver?).to eq(true)
    end

    describe "checkRow" do
      it "should find a full row" do

      end

    end

    it "should return true on a filled column with same pieces" do
      board = Board.new('  X,  X,  X')
      expect(board.gameOver?).to eq(true)
    end

    it "should return true on a filled row with same pieces" do
      board = Board.new('XXX,   ,   ')
      expect(board.gameOver?).to eq(true)
    end
  end
end