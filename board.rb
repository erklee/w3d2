class Board
    attr_reader :populate
    def initialize
        @grid = Array.new(4) {Array.new(4, ["_"])}
        @cards = [[:A , :A], [:B, :B], [:C , :C], [:D, :D], :E, :E, :F, :F , :G, :G, :H, :H]

    end

    def populate
        while @grid.flatten.any?("_")
            row = rand(0..3)
            col = rand(0..3)
            @cards.each do |card|
                @grid[row][col] = card if @grid[row][col] == ("_")
            
            end
        end
    end
end


