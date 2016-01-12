
class Piece

  def initialize(color)#, grid)
    @color = color
    # @grid = grid
  end

  def present?
    true
  end

  def to_s(id, color)
    if color == "white"

      case id
      when "rook"
        " ♖ "
      when "knight"
        " ♘ "
      when "bishop"
        " ♗ "
      when "queen"
        " ♕ "
      when "king"
        " ♔ "
      when "pawn"
        " ♙ "
      end
    else
      case id
      when "rook"
        " ♜ "
      when "knight"
        " ♞ "
      when "bishop"
        " ♝ "
      when "queen"
        " ♛ "
      when "king"
        " ♚ "
      when "pawn"
        " ♟ "
      end
    end
  end

end
