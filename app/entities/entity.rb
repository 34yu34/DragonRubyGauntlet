class Entity
    include Enumerables
    attr_reader :id

    def initialize(id)
        @id = id
    end

end