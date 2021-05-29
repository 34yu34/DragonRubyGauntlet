require "app/components/position.rb"
require "app/components/size.rb"
require "app/components/sprite.rb"
require "app/components/speed.rb"
require "app/components/enemy.rb"
require "app/core/constant.rb"

class EnemySpawnerSystem

    INTERVALLE_BETWEEN_SPAWN = 5


    def initialize(args)
        reset_timer()
    end

    def update(args)
        if (@timer == 0)
            self.spawn(args)
        end

        @timer -= 1
    end

    def spawn(args)
        reset_timer()
        unit_created = args.state.world.create_entity(Position, Speed, Sprite, Size, Enemy) do |pos, _, sprite, _1, _2|
            sprite.location = "sprites/dragon-0.png"
            pos.x = rand * SCREEN_WIDTH
            pos.y = rand * SCREEN_HEIGHT
        end
    end

    def reset_timer
        @timer = INTERVALLE_BETWEEN_SPAWN * FRAME_PER_SECOND
    end
end