require_relative '../board'

describe Board do
  it "Should print out an empty board" do
    board = Board.new
    expect(board.to_s).to eq(" | | \n-----\n | | \n-----\n | | ")
  end
end