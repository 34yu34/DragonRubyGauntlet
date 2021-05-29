class ComponentList
    attr_accessor :entities

    def initialize(entity_size)
        @entities = Array.new(entity_size) { nil }
    end

    def add(entity, component)
        while (@entities.size <= entity)
            @entities << nil
        end
        @entities[entity] = component
    end

    def [](entity)
        @entities[entity]
    end

    def << (component)
        @entities << component
    end
end