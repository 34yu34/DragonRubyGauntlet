class Entities

    def initialize
        @entities = {}
        @entities_size = 0
    end

    def register_component()
        @entities << Array.new(@entities_size) { nil }
    end
end