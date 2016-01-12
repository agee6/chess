require_relative 'piece.rb'

class Stepping < Piece
  attr_accessor :id

  def initialize(color, grid, pos)
    super(color, grid, pos)
  end

  def to_s
    super(@id, @color)
  end

end
