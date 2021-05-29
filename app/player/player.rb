require "app/core/gameobject.rb"
require "app/core/constant.rb"

class Player < GameObject
    SPEED = 3 * UNIT_PER_SECOND

    def self.from_sprite(sprite_location)
        GameObject.from_sprite(sprite_location, Player)
    end

    def update(input)
        @transform.position.x += input.left_right * SPEED
        @transform.position.y += input.up_down * SPEED
    end
end