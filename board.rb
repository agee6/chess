require_relative 'display.rb'
require_relative 'piece.rb'
require_relative 'pawn'
require_relative 'sliding'
require_relative 'stepping'

class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    populate_grid
  end

  def populate_grid
    # 0.upto(8) do |i|
    @grid.each_index do |i|
      if i == 0 || i == 7
        @grid[0][i] = Sliding.new("white", "rook")
        @grid[7][i] = Sliding.new("black", "rook")
      elsif i == 1 || i == 6
        @grid[0][i] = Stepping.new("white", "knight")
        @grid[7][i] = Stepping.new("black", "knight")
      elsif i == 2 || i == 5
        @grid[0][i] = Sliding.new("white", "bishop")
        @grid[7][i] = Sliding.new("black", "bishop")
      elsif i == 3
        @grid[0][i] = Sliding.new("white", "queen")
        @grid[7][i] = Sliding.new("black", "queen")
      else
        @grid[0][i] = Stepping.new("white", "king")
        @grid[7][i] = Stepping.new("black", "king")
      end
    end
    @grid[1].each_index do |i|
      @grid[1][i] = Pawn.new("white")
      @grid[6][i] = Pawn.new("black")
    end
  end

  def move(start, end_pos)
    start_row, start_col = start
    if @grid[start_row][start_col].nil?
      raise ArgumentError
    end
    end_row, end_col = end_pos
    if invalid_move?(start, end_pos)
      raise ArgumentError
    end
    @grid[end_row][end_col] = @grid[start_row][start_col]
    @grid[start_row][start_col] = nil
  end

end

b = Board.new

d = Display.new(b)
d.render
