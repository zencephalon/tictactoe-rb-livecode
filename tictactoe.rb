require_relative 'board'

board = Board.new

until board.gameOver?
  ['X', 'O'].each do |player|
    puts board
    puts "#{player}'s turn."
    puts "Enter your row:"
    row = gets.chomp
    puts "Enter your column:"
    col = gets.chomp
    board.place!(row.to_i, col.to_i, player)
  end
end