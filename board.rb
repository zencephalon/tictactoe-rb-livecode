class Board
  def initialize
    @board = Array.new(3) { Array.new(3) { ' ' } }
  end

  def place!(row, col, piece)
    @board[row][col] = piece
  end

  def to_s
    @board.map {|row| row.join('|') }.join("\n-----\n")
  end

end
