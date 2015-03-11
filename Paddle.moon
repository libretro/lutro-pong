Rectangle = require "Lutron/Entity/Rectangle"

class Paddle extends Rectangle -- Abstract
  new: (game) =>
    @game = game
    super(0, 0, 5, 50)
    @friction.y = 0.9
    @accelerationSpeed = 1800
    @distanceFromSide = 20
    @centerY @game.height / 2

  processInput: =>
    -- Handled by Player1 and Player2 classes

  update: (dt) =>
    @processInput!
    if @bottom! > @game.height
      @velocity.y *= -1
      @bottom @game.height
    elseif @top! < 0
      @velocity.y *= -1
      @top 0

    super dt
