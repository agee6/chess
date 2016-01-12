require_relative 'piece.rb'

class Pawn < Piece
  attr_accessor :id

  def initialize(color, id="pawn")
    super(color)
    @id = id
  end

  def to_s
    super(@id, @color)
    # "♙"
  end



end
