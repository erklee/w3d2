class Card
    # @@face_value = ("A".."Z").to_a

    # a = Class.new('A')
    # @value = 'A'
    # @face_up = 'A'
    attr_reader :face_down, :value
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