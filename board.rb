require_relative "card"
class Board

    attr_reader :grid, :cards
    def initialize
        @grid = Array.new(4) {Array.new(4, "_")}
        pairs = ("a".."h").to_a * 2
        @cards = pairs.shuffle.map!{|pair| Card.new(pair)}

    end

    def populate
        @grid.each_with_index do |rows, i|
            rows[i].each 

        end
    end

    def []

    end


    def []=

    end


end
# a = Board.new
# p a