require "app/entities/world.rb"
require "app/systems/initialization_system.rb"
require "app/systems/render_system.rb"
require "app/systems/player_system.rb"
require "app/systems/movement_system.rb"
require "app/systems/enemy_spawner_system.rb"


def tick args
  init(args)

  update(args)
end

def init args
  args.state.world ||= World.default
  args.state.initial_system ||= InitialisationSystem.new(args)
  args.state.player_system ||= PlayerSystem.new(args)
  args.state.movement_system ||= MovementSystem.new(args)
  args.state.enemy_spawn_system ||= EnemySpawnerSystem.new(args)
  args.state.render_system ||= RenderingSystem.new(args)
end

def update(args)
  args.state.initial_system.update(args)
  args.state.player_system.update(args)
  args.state.movement_system.update(args)
  args.state.enemy_spawn_system.update(args)
  args.state.render_system.update(args)
end
