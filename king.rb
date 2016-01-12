
class King < Stepping

  def to_s
    if @color.white
      " ♔ "
    else
      " ♚ "
    end
  end
  def moves
    moves_arr = []
    row, col = @pos
    positions = [[-1,-1], [-1,0], [-1,1], [0,1], [0,-1], [1,-1], [1,0], [1,1]]
    positions.each do |pos_arr|
      x, y = pos_arr
      new_move = [row + x, col + y]
      if inbounds?(new_move) && valid_move?(new_move)
        moves_arr << new_move
      end
    end
  end

end
