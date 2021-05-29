require "app/components/position.rb"
require "app/components/size.rb"
require "app/components/sprite.rb"
require "app/components/player.rb"
require "app/components/speed.rb"
require "app/core/constant.rb"
require "app/systems/basic_system.rb"

class PlayerSystem
    
    def initialize(args)
        player = args.state.world.create_entity(Player, Speed, Position, Size, Sprite)
        args.state.world.add_component(player, Sprite.new("dragonruby.png"))
        args.state.world.add_component(player, Position.new(SCREEN_WIDTH/2, SCREEN_HEIGHT/2))
    end

    def update(args)
        args.state.world.foreach(Player, Speed) do |player, speed|
            speed.x = args.inputs.left_right * player.max_speed
            speed.y = args.inputs.up_down * player.max_speed
        end
    end
end