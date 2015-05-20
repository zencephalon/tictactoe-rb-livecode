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
    end

    it "should return true on a filled column with same pieces" do

    end

    it "should return true on a filled row with same pieces" do

    end
  end
end