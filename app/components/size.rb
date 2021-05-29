require "app/components/component.rb"
require "app/core/constant.rb"

class Size
    attr_accessor :width, :height
    
    def initialize(width = UNIT, height = UNIT)
        @width = width
        @height = height
    end

    def serialize
        {:width => @width, :height => @height}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def self.id
        1
    end

    def id
        self.class.id
    end
end