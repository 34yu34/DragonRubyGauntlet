require "app/entities/entity_manager.rb"

class World
    @@default_world = nil

    def self.default
        if @@default_world == nil
            @@default_world = EntityManager.new
        end

        @@default_world
    end
end