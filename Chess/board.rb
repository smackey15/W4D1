require_relative "piece"
class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8) {Array.new(8)} #{NullPiece.instance}
        #private
        #@null_piece #fill board with null piece
    end
    
    def [](pos)
        return @grid[pos[0]][pos[1]]
    end

    def []=(pos,val)
        @grid[pos[0]][pos[1]] = val
    end

    def move_piece(start_pos, end_pos) 
        #raise error if no piece at start_pos
        #raise error if piece can't move to end_pos 
        #should update 2d grid
        #should update the moved pieces position

    end

    #def fill_board
    #    self[[row, col]] = #pieces
    #end
end