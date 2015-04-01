-- A given state in the application's state machine.
class States
  new: (parent = nil) =>
    @parent = parent
    @name = nil
    @entities = {}

  -- Loads all entities in the State.
  load: =>
    for name, entity in pairs @entities
      entity\load!

  enter: (previousState) =>
    -- Nothing

  exit: (nextState) =>
    -- Nothing

  -- Draw all entities in the State.
  draw: =>
    for name, entity in pairs @entities
      entity\draw!

  -- Update all entities in the State.
  update: (dt) =>
    for name, entity in pairs @entities
      entity\update dt

  -- Add an entity to the State.
  addEntity: (entity, name = nil) =>
    if name == nil
      table.insert @entities, entity
    else
      @entities[name] = entity
    return entity
