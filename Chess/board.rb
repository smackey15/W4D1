require_relative "piece"
class Board
    def initialize
        @grid = Array.new(8) {Array.new(8) {NullPiece.instance}} 
    end
    
    def [](pos)

    end

    def []=(pos,val)

    end

    def move_piece(start_pos, end_pos)

    end
end