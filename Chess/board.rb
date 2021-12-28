require_relative "piece"
class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8) {Array.new(8) {NullPiece.instance}}
        fill_board
        #@null_piece #fill board with null piece
    end
    
    def [](pos)
        return @grid[pos[0]][pos[1]]
    end

    def []=(pos,val)
        @grid[pos[0]][pos[1]] = val
    end

    def move_piece(start_pos, end_pos)
        raise "no piece at start_pos" if self[start_pos] == "NullPiece"
        raise "piece can't move to end_pos" if !valid_move?(end_pos) 
        
        self[end_pos] = self[start_pos]
        self[start_pos] = "NullPiece"
        
        # move the piece
        # 1. set start_pos = NullPiece
        # 2. set end_pos = Piece.new
        
        #should update 2d grid
        #should update the moved pieces position 
    end

    def valid_move?(pos) #(1,1) , (-5, 100)
        pos.each do |num|
            return false if num < 0 || num > 7
        end
        true
        # row = pos[0]  #row = 1
        # col = pos[1]    #col = 1

        # 0 <= row < 8 && 0 <= col < 8 #TRUE if Row within 0-7 AND Col is also within 0-7
 
    end

    #def add_piece(pos, piece)
    #    @grid[pos] = piece
    #  end
    #end
    #
    #board = Board.new
    #board.add_piece([0,0], Pawn.new)
    
    private
    def fill_board
         setup = [Rook.new, Knight.new, Bishop.new, King.new, Queen.new, Bishop.new, Knight.new, Rook.new]
        @grid.map.with_index do |row, idx|
            if idx == 0 || idx == 7
                row.map!.with_index do |el, idx2|
                    el = setup[idx2]
                end
            elsif idx == 1 || idx == 6
                row.map! do |el2|
                    el2 = Pawn.new 
                end 
            end
        end
    end
    
    def add_piece(pos, piece)
        @grid[pos] = piece
    end
end

#def fill_board
#    setup = [Rook.new, Knight.new, Bishop.new, King.new, Queen.new, Bishop.new, Knight.new, Rook.new]
#   @grid.map.with_index do |row,idx|
#       if idx == 0 || idx == 1 || idx == 6 || idx == 7
#           row.map! do |el|
#               el = Piece.new
#           end
#       end
#   end
#end