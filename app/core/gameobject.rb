require "app/core/transform.rb"
require "app/core/sprite.rb"

class GameObject
    attr_accessor :transform, :renderer

    def self.from_sprite(sprite_location, type = GameObject)
        obj = type.new
        obj.renderer = Sprite.new(sprite_location)
    end

    def initialize()
        @transform = transform.new
        @render = nil
    end

    def render
        @transform.render + @renderer.render
    end

    def to_s
        @transform.to_s
    end
end