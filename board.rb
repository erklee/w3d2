require_relative "card"
class Board

    attr_reader :grid, :cards
    def initialize
        @grid = Array.new(4) {Array.new(4, "_")}
        pairs = ("a".."h").to_a * 2
        @cards = pairs.shuffle.map!{|pair| Card.new(pair)}

    end

    def populate
        j = 0
        @grid.dup.each_with_index do |rows, i|
            rows.each_with_index do |ele, k|
                @grid[i][k] = @cards[j] 
                j += 1
            end

        end
        return true
    end


end

board = Board.new
p board.cards
p board.populate
p board.grid
