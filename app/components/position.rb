require "app/components/component.rb"

class Position
    attr_accessor :x, :y

    def initialize(x = 0, y = 0)
        @x = x
        @y = y
    end

    def serialize
        {:x => @x, :y => @y}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def self.id 
        0 
    end

    def id
        self.class.id
    end
end