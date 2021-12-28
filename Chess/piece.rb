class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos 
    end

    def to_s
    end

    def empty?
    end

    def valid_moves #SAME AS #MOVES?
        #return an array of places a piece can move to
        #implement after subclasses are created
    end

    def pos=(val)
    end

    def Symbol
    end

    private
    def move_into_check?(end_pos)
    end
end

