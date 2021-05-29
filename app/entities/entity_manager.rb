require "app/entities/component_list.rb"

class EntityManager
    def initialize
        @components = []
        @entities_size = 0
    end

    def serialize
        {:components => @component, :entities_size => @entities_size}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def add_component(entity, component)
        if entity >= @entities_size
            return
        end
        
        while (@components.size <= component.id)
            @components << nil
        end

        if (@components[component.id] == nil)
            @components[component.id] = ComponentList.new(@entities_size) 
        end

        @components[component.id].add(entity, component)
    end

    def create_entity(*components, &block)
        @entities_size += 1
        components.map!{|x| x.new}

        block.call components
        components.each do |comp|
            self.add_component(@entities_size - 1, comp)
        end
        @entities_size - 1
    end

    def foreach(*components, &block)
        types_list = []
        components.each do |component|
            if (@components[component.id] != nil)
                types_list << (@components[component.id])
            end
        end

        @entities_size.times do |i|
            obj = types_list.map {|components| components[i] }
            if (!obj.include?(nil))
                yield(obj)
            end
        end
    end
end