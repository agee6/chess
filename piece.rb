
class Piece

  def initialize(color, grid, pos)
    @color = color
    @grid = grid
    @pos = pos
  end

  def present?
    true
  end

  def valid_move?(move)
    x, y = move
    return false if @grid[x][y].color == @color
    return true
  end

  def inbounds?(move)
    x, y = move
    return true if x.between?(0, 7) && y.between?(0, 7)
    false
  end

  def change_position(move)
    @pos = move
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
