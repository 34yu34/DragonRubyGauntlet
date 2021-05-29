require "app/components/component.rb"

class Sprite
    attr_accessor :location

    def initialize(location = "")
        @location = location
    end

    def serialize
        {:location => @location}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def self.id
        2
    end

    def id
        self.class.id
    end
end