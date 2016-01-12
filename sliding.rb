require_relative 'piece.rb'

class Sliding < Piece
  attr_accessor :id

  def initialize(color, id)
    super(color)
    @id = id
  end

  def to_s
    super(@id, @color)
  end

  def moves

  end


end
