class Player
    attr_accessor :max_speed

    def  initialize
        @max_speed = 5
    end

    def serialize
        {:max_speed => @max_speed}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def self.id
        3
    end

    def id
        self.class.id
    end
end