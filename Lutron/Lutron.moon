StateMachine = require "Lutron/State/StateMachine"
Sofia24 = require "Lutron/Font/Sofia24"
FontManager = require "Lutron/Font/FontManager"

class Lutron extends StateMachine
  new: (width = 320, height = 240, startingState = nil) =>
    super startingState
    @width = width
    @height = height
    @r = 0
    @g = 0
    @b = 0
    @randomseed = os.time()

    -- The Large font is set to be the default
    @fonts = FontManager('default', Sofia24!)

  load: =>
    -- Start the random seed
    math.randomseed @randomseed

    -- Load all fonts, and set the default font up.
    @fonts\load!
    @fonts\set('default')

    -- Set the background color for the application
    lutro.graphics.setBackgroundColor @r, @g, @b

    -- Load all the states.
    super!

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
