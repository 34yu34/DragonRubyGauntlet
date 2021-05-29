class Enemy
    def serialize
        {}
    end

    def inspect
        serialize.to_s
    end

    def to_s
        serialize.to_s
    end

    def self.id
        5
    end

    def id
        self.class.id
    end
end