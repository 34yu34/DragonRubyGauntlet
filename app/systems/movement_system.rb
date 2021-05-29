class MovementSystem
    def update(args)
        args.state.world.foreach(Speed, Position) do |speed, pos|
            pos.x += speed.x
            pos.y += speed.y
        end
    end
end