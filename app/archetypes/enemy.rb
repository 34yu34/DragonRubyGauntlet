class EnemyArchetype
    attr_accessor :components

    def initialize
        @components = [
            Position,
            Size,
            Sprites,
            Enemy,
            Speed
        ]
    end

    def create_archetype(args, *types)

    end
end