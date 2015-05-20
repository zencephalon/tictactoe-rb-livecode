require_relative '../board'

describe Board do
  it "Should print out an empty board" do
    board = Board.new
    expect(board.to_s).to eq(" | | \n-----\n | | \n-----\n | | ")
  end

  it "Should let us place pieces" do
    board = Board.new
    board.place!(0, 0, 'X')
    expect(board.to_s).to eq("X| | \n-----\n | | \n-----\n | | ")
  end
end