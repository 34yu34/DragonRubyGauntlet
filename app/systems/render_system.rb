require "app/systems/basic_system.rb"
require "app/components/position.rb"
require "app/components/size.rb"
require "app/components/sprite.rb"

class RenderingSystem
    
    def initialize(args)

    end

    def update(args)
        args.state.world.foreach(Position, Size, Sprite) do |pos, size, sprite|
            args.outputs.sprites << [pos.x, pos.y, size.width, size.height, sprite.location]
        end
    end
end