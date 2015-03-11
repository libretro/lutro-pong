StateMachine = require "Lutron/State/StateMachine"

class Lutron extends StateMachine
  new: (width = 320, height = 240, startingState = nil) =>
    super startingState
    @width = width
    @height = height
    @r = 0
    @g = 0
    @b = 0
    @randomseed = os.time()

  load: =>
    -- Start the random seed
    math.randomseed @randomseed

    -- @todo Implement a Font API
    font = lutro.graphics.newImageFont "Lutron/Resources/font.png", " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?-+/"
    lutro.graphics.setFont font

    -- Set the background color for the application
    lutro.graphics.setBackgroundColor @r, @g, @b

    -- Load each state
    for name, state in pairs @states
      state\load!

    -- Enter the first state
    @currentState!\enter nil

  -- Update the current state
  update: (dt) =>
    @currentState!\update dt

  -- Clears and draws the current state
  draw: () =>
    lutro.graphics.clear!
    @currentState!\draw!

  -- Add an entity to the current state
  addEntity: (entity, name = nil) =>
    @currentState!\addEntity entity, name

  -- Retrieve the current state's entities
  entities: =>
    @currentState!.entities
