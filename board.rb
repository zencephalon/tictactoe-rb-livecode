class Board
  def initialize(board_str = '   ,   ,   ')
    @board = Array.new(3)
    board_str.split(',').each_with_index do |row, index|
      @board[index] = row.split('')
    end
  end

  def place!(row, col, piece)
    @board[row][col] = piece
  end

  def gameOver?
    false
  end

  def to_s
    @board.map {|row| row.join('|') }.join("\n-----\n")
  end
end