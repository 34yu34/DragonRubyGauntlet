require "app/core/point.rb"
require "app/core/constant.rb"

class Transform
    attr_accessor :position, :size

    def initialize
        @position = Point.new
        @size = Point.new(UNIT, UNIT)
    end

    def render
        @position.to_a + @size.to_a
    end

    def to_s
        "Positon : #{@position} , Size : #{@size}"
    end
end