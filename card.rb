class Card
    attr_reader :face_down, :face_value
    def initialize (value)
        @face_value = value
        @face_down = true 
    end

    def reveal
        @face_down = false
    end

    def hide
        @face_down = true
    end

    def to_s
        if self.face_down == false
            return @face_value.to_s
        end
    end

    def ==(card2)
        return self.face_value == card.face_value
    end
end

a = Card.new("A")
p a.face_value